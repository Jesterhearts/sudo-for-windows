@echo off
:: Assuming this file is in the same directory as sudo.bat
copy sudo.bat %LOCALAPPDATA%\sudo.bat
:: Write the regkey for aliasing sudo
::                                                                                                    --       Escape hell      --
sudo.bat reg add "HKEY_CURRENT_USER\Software\Microsoft\Command Processor" /v AutoRun /d ^"doskey sudo=\"^%%^%%LOCALAPPDATA^^^^%%^%%\sudo.bat\" $*^"
