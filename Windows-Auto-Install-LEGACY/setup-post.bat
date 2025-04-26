@echo off
oobe\windeploy
net user Administrator /active:yes
reg add "HKLM\SYSTEM\Setup" /v OOBEInProgress  /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\Setup" /v SetupType  /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\Setup" /v SystemSetupInProgress  /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v FirstTimeSetup  /t REG_SZ /d "C:\SetupComplete.bat" /f
exit