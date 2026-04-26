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
