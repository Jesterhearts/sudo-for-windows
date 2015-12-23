:: ------- Self-elevating.bat --------------------------------------
:: Modified from http://stackoverflow.com/questions/5944180/how-do-you-run-a-command-as-an-administrator-from-the-windows-shell

@echo off
:: This juggles the parameters around so that any input parameters can be quoted
:: regardless of whether or not they start out quoted
set var=%*
set "var=%var:"=%"
findstr "^:::" "%~sf0"> %LOCALAPPDATA%\sudo_temp.vbs
cscript //nologo %LOCALAPPDATA%\sudo_temp.vbs %CD% "%var%" & exit /b

::: Set objShell = CreateObject("Shell.Application")
::: Set objWshShell = WScript.CreateObject("WScript.Shell")
::: Set objWshProcessEnv = objWshShell.Environment("PROCESS")
::: objShell.ShellExecute "cmd", "/c cd " & WScript.Arguments.Item(0) & " & echo " & WScript.Arguments.Item(0) & "^>Running as Admin: """ & WScript.Arguments.Item(1) & """ & cmd /c " & WScript.Arguments.Item(1) & " & pause", "", "runas"
