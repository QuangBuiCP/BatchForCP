@echo off
set flags=g++ -std=c++17 -DLOCAL -Wshadow -Wall -o "%1" "%1.cpp" -O2
echo %flags%

echo.
%flags%
echo.

if errorlevel 1 (
	echo Compilation failed
) else (
	echo Compilation finished successfully
)
