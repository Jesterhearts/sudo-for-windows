# sudo-for-windows
Sudo for Windows

This repository adds a sudo command for windows.
## Usage
```
> sudo dir
> sudo dir /?
> sudo "dir /?"
> sudo "dir > foo.txt"
```
  - Note that you only need "" around multi-word commands if you are redirecting output

## Automatic Install steps
1. Download the repository
2. Run install_sudo.bat
3. When prompted for admin privileges click "Yes"
4. Restart any active cmd sessions

## Manual install steps
1. Download the repository
2. Place "sudo.bat" and "sudo_gen_uuid.vbs" in %LOCALAPPDATA%
3. Open regedit.exe
4. Navigate to "HKEY_CURRENT_USER\Software\Microsoft\Command Processor"
5. Add a new String value
6. Name the value AutoRun
7. Set the data to:
  - doskey sudo="%LOCALAPPDATA%\sudo.bat" $*
8. Restart any active cmd sessions

