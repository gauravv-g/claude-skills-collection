# Setup Project Skills for Claude Code

# This script links the current project to the global skills directory

$globalSkillsDir = "$env:USERPROFILE\.claude-skills"
$projectSkillsDir = ".claude\skills"

Write-Host "Setting up skills for current project..." -ForegroundColor Cyan

# Check if global skills directory exists
if (-not (Test-Path $globalSkillsDir)) {
    Write-Host "Error: Global skills directory not found at $globalSkillsDir" -ForegroundColor Red
    Write-Host "Please run setup-global-skills.ps1 first." -ForegroundColor Red
    exit 1
}

# Create .claude directory if it doesn't exist
if (-not (Test-Path ".claude")) {
    New-Item -ItemType Directory -Path ".claude" -Force | Out-Null
    Write-Host "Created .claude directory" -ForegroundColor Green
}

# Remove existing skills directory if it exists
if (Test-Path $projectSkillsDir)) {
    Write-Host "Removing existing skills directory..." -ForegroundColor Yellow
    Remove-Item -Path $projectSkillsDir -Recurse -Force
}

# Create symbolic link
Write-Host "Creating symbolic link to global skills..." -ForegroundColor Cyan
New-Item -ItemType SymbolicLink -Path $projectSkillsDir -Target $globalSkillsDir | Out-Null

# Verify the link was created
if (Test-Path $projectSkillsDir)) {
    $skillCount = (Get-ChildItem -Path $projectSkillsDir -Directory).Count
    Write-Host "Success! Linked $skillCount skills to current project" -ForegroundColor Green
    Write-Host "Skills are now available in this project" -ForegroundColor Green
} else {
    Write-Host "Error: Failed to create symbolic link" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "You can now use all skills in this project!" -ForegroundColor Cyan
Write-Host "Try: /persistent-auto" -ForegroundColor Yellow
