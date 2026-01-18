# Building Project A.L.I.C.E

This document describes how to build the Project A.L.I.C.E solution.

## Prerequisites

- **Windows Operating System** (required for .NET Framework 4.8)
- **Visual Studio 2017 or later** OR **Visual Studio Build Tools**
- **.NET Framework 4.8 Developer Pack** (included with Visual Studio 2019+)
- **NuGet Package Manager** (included with Visual Studio)

## Build Output

All projects in the solution are configured to output to a centralized `output` folder at the repository root:

```
output/
├── Debug/          # Debug build artifacts
│   ├── ALICE.dll
│   ├── ALICE Community Toolkit.exe
│   ├── A.L.I.C.E Toolkit.exe
│   ├── ALICE Debug Console.exe
│   └── ... (dependencies and resources)
└── Release/        # Release build artifacts
    ├── ALICE.dll
    ├── ALICE Community Toolkit.exe
    ├── A.L.I.C.E Toolkit.exe
    ├── ALICE Debug Console.exe
    └── ... (dependencies and resources)
```

## Building the Solution

### Option 1: Using Visual Studio

1. Open `Project A.L.I.C.E.sln` in Visual Studio
2. Select your desired configuration (Debug or Release) from the toolbar
3. Build the solution:
   - **Build Menu** → **Build Solution** (or press `Ctrl+Shift+B`)
   - Or right-click the solution in Solution Explorer and select **Build Solution**

The output will be generated in the `output\Debug` or `output\Release` folder.

### Option 2: Using Build Scripts

#### Windows Command Prompt (build.bat)

```batch
build.bat
```

This script will:
- Clean previous build outputs
- Restore NuGet packages
- Build both Debug and Release configurations
- Output results to the `output` folder

#### PowerShell (build.ps1)

```powershell
.\build.ps1
```

This script provides:
- Automatic detection of MSBuild using vswhere
- Colored console output
- Better error handling
- Same functionality as build.bat

### Option 3: Using MSBuild Command Line

#### Build Debug Configuration
```batch
msbuild "Project A.L.I.C.E.sln" /p:Configuration=Debug /p:Platform="Any CPU"
```

#### Build Release Configuration
```batch
msbuild "Project A.L.I.C.E.sln" /p:Configuration=Release /p:Platform="Any CPU"
```

#### Build Both Configurations
```batch
msbuild "Project A.L.I.C.E.sln" /p:Configuration=Debug /p:Platform="Any CPU"
msbuild "Project A.L.I.C.E.sln" /p:Configuration=Release /p:Platform="Any CPU"
```

## Projects in the Solution

1. **Project A.L.I.C.E** (`ALICE/Project A.L.I.C.E.csproj`)
   - Type: Class Library
   - Output: `ALICE.dll`
   - Main plugin library

2. **ALICE Community Toolkit** (`ALICE Community Toolkit/ALICE Community Toolkit/ALICE Community Toolkit.csproj`)
   - Type: WPF Application
   - Output: `ALICE Community Toolkit.exe`
   - Community tools and utilities

3. **ALICE Developer Toolkit** (`ALICE Developer Toolkit/A.L.I.C.E Toolkit/ALICE Developer Toolkit.csproj`)
   - Type: WPF Application
   - Output: `A.L.I.C.E Toolkit.exe`
   - Developer tools and generators

4. **ALICE Debug Console** (`ALICE Debug Console/ALICE Debug Console.csproj`)
   - Type: Console Application
   - Output: `ALICE Debug Console.exe`
   - Debug and testing console

## Troubleshooting

### "MSBuild not found" Error
- Install Visual Studio Build Tools from: https://visualstudio.microsoft.com/downloads/
- Or ensure Visual Studio is properly installed
- Make sure MSBuild is in your system PATH

### ".NET Framework 4.8 not found" Error
- Install the .NET Framework 4.8 Developer Pack
- Download from: https://dotnet.microsoft.com/download/dotnet-framework/net48

### NuGet Package Restore Failures
- Ensure you have internet connectivity
- Try running `nuget restore "Project A.L.I.C.E.sln"` manually
- Check that NuGet package sources are configured correctly in Visual Studio

### Build Errors
- Ensure all prerequisites are installed
- Try cleaning the solution first (Delete `bin`, `obj`, and `output` folders)
- Restore NuGet packages: `nuget restore "Project A.L.I.C.E.sln"`
- Check that you're building on Windows (Linux/Mac are not supported for .NET Framework 4.8)

## Clean Build

To perform a clean build, delete the following folders before building:
- `output/` (centralized output folder)
- `bin/` folders in each project (if any remain)
- `obj/` folders in each project

Or use Visual Studio's **Build** → **Clean Solution** command before building.

## Notes

- The `output` folder is excluded from version control via `.gitignore`
- All projects output to the same folder for easier distribution and deployment
- Resource files (audio, binds, data files) are automatically copied to the output folder
- Dependencies from NuGet packages are also copied to the output folder
