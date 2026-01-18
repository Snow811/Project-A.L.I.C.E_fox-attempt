@echo off
REM Build script for Project A.L.I.C.E
REM This script builds the entire solution and outputs to the 'output' folder

echo.
echo ================================================================
echo Building Project A.L.I.C.E
echo ================================================================
echo.

REM Check if MSBuild is available
where msbuild >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: MSBuild not found in PATH
    echo.
    echo Please install Visual Studio Build Tools or add MSBuild to your PATH
    echo You can download Visual Studio Build Tools from:
    echo https://visualstudio.microsoft.com/downloads/
    echo.
    pause
    exit /b 1
)

REM Clean previous build outputs
echo Cleaning previous build outputs...
if exist "output" (
    rmdir /s /q "output"
    echo Previous output folder removed.
)
echo.

REM Restore NuGet packages
echo Restoring NuGet packages...
nuget restore "Project A.L.I.C.E.sln"
if %ERRORLEVEL% NEQ 0 (
    echo WARNING: NuGet restore failed. Continuing anyway...
)
echo.

REM Build Debug configuration
echo Building Debug configuration...
msbuild "Project A.L.I.C.E.sln" /p:Configuration=Debug /p:Platform="Any CPU" /m /v:minimal
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Debug build failed!
    pause
    exit /b 1
)
echo Debug build completed successfully.
echo.

REM Build Release configuration
echo Building Release configuration...
msbuild "Project A.L.I.C.E.sln" /p:Configuration=Release /p:Platform="Any CPU" /m /v:minimal
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Release build failed!
    pause
    exit /b 1
)
echo Release build completed successfully.
echo.

echo ================================================================
echo Build completed successfully!
echo ================================================================
echo.
echo Build outputs can be found in:
echo   - output\Debug\   (Debug configuration)
echo   - output\Release\ (Release configuration)
echo.
pause
