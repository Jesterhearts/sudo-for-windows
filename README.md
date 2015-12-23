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

## Manual install steps

1. Download the repository.
2. Place sudo.bat in your user directory
3. Open regedit.exe
4. Navigate to HKEY_CURRENT_USER\Software\Microsoft\Command Processor
5. Add a new String value
6. Name the value AutoRun
7. Set the data to "doskey sudo=%HOMEPATH%\sudo.bat $*" (without the quotes)
8. Restart any active cmd sessions.
