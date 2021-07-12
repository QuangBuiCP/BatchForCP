@echo off
echo.

echo.>nullout

if not exist "%1.in" (
  catin %1 run
)

:continue
echo Input:
type "%1.in"

echo.
echo Output:
"%1.exe" < "%1.in"
rem "%1.exe" < "%1.in" > nullout
rem type nullout

echo.

if not exist "%1.out" (
  echo Program finished
  goto done
)

fc "%1.out" nullout /n /w /a > errlog 

if errorlevel 1 (
  echo Expected:
  type "%1.out"
  echo.
  echo Log:
  rem echo WRONG ANSWER
) else (
  rem echo CORRECT ANSWER
)

:done
del nullout -f
if exist errlog (
  del errlog -f
)
