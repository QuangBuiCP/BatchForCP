@echo off

for /f %%F in ('dir /b %1*.in') do (
  del %%F /s /f /q
)
for /f %%F in ('dir /b %1*.out') do (
  del %%F /s /f /q
)
echo.
echo Batch file finished
echo.

