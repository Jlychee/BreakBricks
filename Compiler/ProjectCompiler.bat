@echo off

setlocal

rem
set "INPUT_DIR=../src"
set "OUTPUT_DIR=../vm"

rem
if not "%1"=="" goto :USAGE
if "%~1"=="/?" (
:USAGE
  echo Usage:
  echo     ProjectCompiler               compiles jack game files into vm files to run in vmEmulator
  exit /b
)

java -classpath "%CLASSPATH%;bin/classes;bin/lib/Hack.jar;bin/lib/Compilers.jar" ^
  Hack.Compiler.JackCompiler "%INPUT_DIR%"

popd

if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

move "%INPUT_DIR%\*.vm" "%OUTPUT_DIR%" >nul 2>&1

if %ERRORLEVEL% NEQ 0 (
    echo Error moving files. Check paths.
) else (
	echo files compiled successfully
)
