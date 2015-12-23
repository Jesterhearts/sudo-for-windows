@echo off
:: Assuming this file is in the same directory as sudo.bat
:: Create the uuid generator
echo set obj = CreateObject("Scriptlet.TypeLib") > %LOCALAPPDATA%\sudo_gen_uuid.vbs
echo WScript.StdOut.WriteLine Replace(Replace(Replace(obj.GUID,"{",""),"}",""),"-","_") >> %LOCALAPPDATA%\sudo_gen_uuid.vbs
:: Copy the bat file to appdata
copy sudo.bat %LOCALAPPDATA%\sudo.bat
:: Write the regkey for aliasing sudo
::                                                                                                    --       Escape hell      --
sudo.bat reg add "HKEY_CURRENT_USER\Software\Microsoft\Command Processor" /v AutoRun /d ^"doskey sudo=\"^%%^%%LOCALAPPDATA^^^^%%^%%\sudo.bat\" $*^"
