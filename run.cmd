@echo off
echo.
echo Input:
type "%1.in"

echo.
echo Output:
"%1.exe" < "%1.in" > nullout
type nullout

echo.

if not exist "%1.out" (
	echo Program finished
	goto done
)

fc "%1.out" nullout /n /w /a > errlog REM  Idk does /w improve the checking or not

if errorlevel 1 (
	echo Expected:
	type "%1.out"
	echo.
	echo Log:
	type errlog
	echo WRONG ANSWER
) else (
	echo CORRECT ANSWER
)

:done
del nullout -f
if exist errlog (
	del errlog -f
)
