# Build script for Project A.L.I.C.E
# This script builds the entire solution and outputs to the 'output' folder

Write-Host ""
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host "Building Project A.L.I.C.E" -ForegroundColor Cyan
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host ""

# Find MSBuild
$msbuildPath = $null
$vsWhere = "${env:ProgramFiles(x86)}\Microsoft Visual Studio\Installer\vswhere.exe"

if (Test-Path $vsWhere) {
    $msbuildPath = & $vsWhere -latest -requires Microsoft.Component.MSBuild -find MSBuild\**\Bin\MSBuild.exe | Select-Object -First 1
}

if (-not $msbuildPath -or -not (Test-Path $msbuildPath)) {
    Write-Host "ERROR: MSBuild not found" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Visual Studio or Visual Studio Build Tools" -ForegroundColor Yellow
    Write-Host "Download from: https://visualstudio.microsoft.com/downloads/" -ForegroundColor Yellow
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host "Using MSBuild: $msbuildPath" -ForegroundColor Green
Write-Host ""

# Clean previous build outputs
if (Test-Path "output") {
    Write-Host "Cleaning previous build outputs..." -ForegroundColor Yellow
    Remove-Item -Path "output" -Recurse -Force
    Write-Host "Previous output folder removed." -ForegroundColor Green
}
Write-Host ""

# Restore NuGet packages
Write-Host "Restoring NuGet packages..." -ForegroundColor Yellow
$nugetPath = Get-Command nuget -ErrorAction SilentlyContinue
if ($nugetPath) {
    & nuget restore "Project A.L.I.C.E.sln"
    if ($LASTEXITCODE -ne 0) {
        Write-Host "WARNING: NuGet restore failed. Continuing anyway..." -ForegroundColor Yellow
    }
} else {
    Write-Host "WARNING: NuGet not found. Skipping package restore..." -ForegroundColor Yellow
}
Write-Host ""

# Build Debug configuration
Write-Host "Building Debug configuration..." -ForegroundColor Yellow
& $msbuildPath "Project A.L.I.C.E.sln" /p:Configuration=Debug /p:Platform="Any CPU" /m /v:minimal
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Debug build failed!" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}
Write-Host "Debug build completed successfully." -ForegroundColor Green
Write-Host ""

# Build Release configuration
Write-Host "Building Release configuration..." -ForegroundColor Yellow
& $msbuildPath "Project A.L.I.C.E.sln" /p:Configuration=Release /p:Platform="Any CPU" /m /v:minimal
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Release build failed!" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}
Write-Host "Release build completed successfully." -ForegroundColor Green
Write-Host ""

Write-Host "================================================================" -ForegroundColor Cyan
Write-Host "Build completed successfully!" -ForegroundColor Green
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Build outputs can be found in:" -ForegroundColor Cyan
Write-Host "  - output\Debug\   (Debug configuration)" -ForegroundColor White
Write-Host "  - output\Release\ (Release configuration)" -ForegroundColor White
Write-Host ""
Read-Host "Press Enter to exit"
