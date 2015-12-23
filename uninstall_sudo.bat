@echo off
:: Clear the regkey - Must be done first so we can still use sudo to delete the regkey
:: Then delete the uuid generator
:: Then elete the .bat file
sudo "reg delete "HKEY_CURRENT_USER\Software\Microsoft\Command Processor" /v AutoRun" & del %LOCALAPPDATA%\sudo_gen_uuid.vbs & del %LOCALAPPDATA%\sudo.bat

