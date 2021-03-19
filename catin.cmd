@echo off
echo.>"%1.in"
break>"%1.in"
notepad "%1.in"

if %2==run (
	run %1
)
