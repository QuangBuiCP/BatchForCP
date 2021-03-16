@echo off
echo Input:
type "%1.in"
echo.
if not exist "%1.out" goto output
echo Expected:
type "%1.out"
echo.
:output
echo Output:
"%1.exe" < "%1.in"
