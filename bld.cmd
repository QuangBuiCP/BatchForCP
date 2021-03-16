@echo off
set flags=g++ -std=c++17 -Wshadow -Wall -Wextra -o "%1" "%1.cpp" -Wno-unused-result -g -DLOCAL -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -pedantic
echo %flags%

echo.
%flags%
echo.

if errorlevel 1 (
	echo Compilation failed
) else (
	echo Compilation finished successfully
)
