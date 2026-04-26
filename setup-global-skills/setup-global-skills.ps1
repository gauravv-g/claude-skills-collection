# Setup Global Skills for Claude Code

# Create global skills directory
$globalSkillsDir = "$env:USERPROFILE\.claude-skills"

Write-Host "Setting up global skills directory..." -ForegroundColor Cyan

# Create global skills directory if it doesn't exist
if (-not (Test-Path $globalSkillsDir)) {
    New-Item -ItemType Directory -Path $globalSkillsDir -Force | Out-Null
    Write-Host "Created global skills directory: $globalSkillsDir" -ForegroundColor Green
} else {
    Write-Host "Global skills directory already exists: $globalSkillsDir" -ForegroundColor Yellow
}

# Get the path to the skills collection
$collectionPath = "C:\Users\Administrator\claude-skills-collection\.claude\skills"

# Check if the collection exists
if (-not (Test-Path $collectionPath)) {
    Write-Host "Error: Skills collection not found at $collectionPath" -ForegroundColor Red
    Write-Host "Please update the collection path in this script." -ForegroundColor Red
    exit 1
}

# Copy all skills to global directory
Write-Host "Copying skills from collection to global directory..." -ForegroundColor Cyan

# Remove existing skills in global directory (to ensure clean copy)
if (Test-Path "$globalSkillsDir\*") {
    Remove-Item -Path "$globalSkillsDir\*" -Recurse -Force
}

# Copy all skills
Copy-Item -Path "$collectionPath\*" -Destination $globalSkillsDir -Recurse -Force

# Count skills
$skillCount = (Get-ChildItem -Path $globalSkillsDir -Directory).Count
Write-Host "Copied $skillCount skills to global directory" -ForegroundColor Green

# Create project setup script
$projectSetupScript = "$PSScriptRoot\setup-project-skills.ps1"

Write-Host "Creating project setup script..." -ForegroundColor Cyan

$projectSetupContent = @'
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
'@

$projectSetupContent | Out-File -FilePath $projectSetupScript -Encoding UTF8

Write-Host "Created project setup script: $projectSetupScript" -ForegroundColor Green

# Create update script
$updateScript = "$PSScriptRoot\update-global-skills.ps1"

Write-Host "Creating update script..." -ForegroundColor Cyan

$updateContent = @'
# Update Global Skills for Claude Code

# This script updates the global skills directory from the collection

$globalSkillsDir = "$env:USERPROFILE\.claude-skills"
$collectionPath = "C:\Users\Administrator\claude-skills-collection\.claude\skills"

Write-Host "Updating global skills directory..." -ForegroundColor Cyan

# Check if collection exists
if (-not (Test-Path $collectionPath)) {
    Write-Host "Error: Skills collection not found at $collectionPath" -ForegroundColor Red
    exit 1
}

# Remove existing skills in global directory
Write-Host "Removing existing skills..." -ForegroundColor Yellow
if (Test-Path "$globalSkillsDir\*") {
    Remove-Item -Path "$globalSkillsDir\*" -Recurse -Force
}

# Copy updated skills
Write-Host "Copying updated skills..." -ForegroundColor Cyan
Copy-Item -Path "$collectionPath\*" -Destination $globalSkillsDir -Recurse -Force

# Count skills
$skillCount = (Get-ChildItem -Path $globalSkillsDir -Directory).Count
Write-Host "Updated! Now have $skillCount skills in global directory" -ForegroundColor Green

Write-Host ""
Write-Host "All projects linked to global skills will see the updates!" -ForegroundColor Cyan
'@

$updateContent | Out-File -FilePath $updateScript -Encoding UTF8

Write-Host "Created update script: $updateScript" -ForegroundColor Green

# Summary
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Setup Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Global skills directory: $globalSkillsDir" -ForegroundColor White
Write-Host "Skills copied: $skillCount" -ForegroundColor White
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. In any project directory, run:" -ForegroundColor White
Write-Host "   .\setup-project-skills.ps1" -ForegroundColor Cyan
Write-Host ""
Write-Host "2. To update skills later, run:" -ForegroundColor White
Write-Host "   .\update-global-skills.ps1" -ForegroundColor Cyan
Write-Host ""
Write-Host "3. Then use skills in your project:" -ForegroundColor White
Write-Host "   /persistent-auto" -ForegroundColor Cyan
Write-Host "   /dockerfile-generator" -ForegroundColor Cyan
Write-Host "   /k8s-yaml-generator" -ForegroundColor Cyan
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
