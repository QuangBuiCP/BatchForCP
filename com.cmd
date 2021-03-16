@echo off
SET flags=g++ -std=c++17 -DLOCAL -Wshadow -Wall -o "%1" "%1.cpp" -O2
echo %flags%
echo.
%flags%
echo.
echo Batch job finished