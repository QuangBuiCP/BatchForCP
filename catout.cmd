@echo off
echo.>"%1.out"
break>"%1.out"
notepad "%1.out"

if %2==run (
	run %1
)
