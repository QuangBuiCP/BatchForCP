@echo off

rem You can change your compiler flag
set flags=g++ -std=c++17 -DLOCAL -Wshadow -Wall -o "%1" "%1.cpp" -O2
echo %flags%

echo.
%flags%
echo.

if errorlevel 1 (
  echo Compilation failed
  exit /b 1
)
echo Compilation finished successfully
echo.

if %2==redo (
  run %1
)
