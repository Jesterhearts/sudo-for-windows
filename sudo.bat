:: ------- Self-elevating.bat --------------------------------------
:: See http://stackoverflow.com/questions/5944180/how-do-you-run-a-command-as-an-administrator-from-the-windows-shell

@echo off
:: This uses the magic of however cmd /c parses quotes to let pretty much any combination work
:: It even allows for stuff like sudo "del "C:\Path with spaces\temp.txt""
echo cmd /c %* > %LOCALAPPDATA%\sudo_command.bat
findstr "^:::" "%~sf0"> %LOCALAPPDATA%\sudo_temp.vbs
cscript //nologo %LOCALAPPDATA%\sudo_temp.vbs %CD% & del %LOCALAPPDATA%\sudo_temp.vbs & exit /b

::: Set objShell = CreateObject("Shell.Application")
::: Set objWshShell = WScript.CreateObject("WScript.Shell")
::: Set objWshProcessEnv = objWshShell.Environment("PROCESS")
::: objShell.ShellExecute "cmd", "/c cd " & WScript.Arguments.Item(0) & " & %LOCALAPPDATA%\sudo_command.bat & pause & del %LOCALAPPDATA%\sudo_command.bat", "", "runas"
