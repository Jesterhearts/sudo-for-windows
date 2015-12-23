:: ------- Self-elevating.bat --------------------------------------
:: See http://stackoverflow.com/questions/5944180/how-do-you-run-a-command-as-an-administrator-from-the-windows-shell

@echo off
:: Generate a uuid to user for the command and launcher script
for /f "delims=" %%i in ('cscript //nologo %LOCALAPPDATA%\sudo_gen_uuid.vbs') do set filename=%%i
:: This uses the magic of however cmd /c parses quotes to let pretty much any combination work
:: It even allows for stuff like sudo "del "C:\Path with spaces\temp.txt""
echo cmd /c %* > %LOCALAPPDATA%\%filename%.bat
findstr "^:::" "%~sf0"> %LOCALAPPDATA%\%filename%.vbs
cscript //nologo %LOCALAPPDATA%\%filename%.vbs "%CD%" %filename% & del %LOCALAPPDATA%\%filename%.vbs

::: Set objShell = CreateObject("Shell.Application")
::: Set objWshShell = WScript.CreateObject("WScript.Shell")
::: Set objWshProcessEnv = objWshShell.Environment("PROCESS")
::: objShell.ShellExecute "cmd", "/c cd " & WScript.Arguments.Item(0) & " & %LOCALAPPDATA%\" & WScript.Arguments.Item(1)  & ".bat & pause & del %LOCALAPPDATA%\" & WScript.Arguments.Item(1) & ".bat", "", "runas"
