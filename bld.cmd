@echo off
set flags=g++ -std=c++17 -o "%1" "%1.cpp" -DLOCAL -ggdb3 -Wall -Wextra -pedantic -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -D_GLIBCXX_ASSERTIONS -fno-sanitize-recover -fstack-protector
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
