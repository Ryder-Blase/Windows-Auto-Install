@echo off
echo Application des Tweaks pour skip OOBE
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE" /v BypassNRO /t REG_DWORD /d 1 /f >nul 2>&1
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v DisableVoice /t REG_DWORD /d 1 /f >nul 2>&1
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v HideEULAPage /t REG_DWORD /d 1 /f >nul 2>&1
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v HideOEMRegistrationScreen /t REG_DWORD /d 1 /f >nul 2>&1
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v HideOnlineAccountScreens /t REG_DWORD /d 1 /f >nul 2>&1
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v HideWirelessSetupInOOBE /t REG_DWORD /d 1 /f >nul 2>&1
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v ProtectYourPC /t REG_DWORD /d 3 /f >nul 2>&1
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup /v OOBEInProgress /t REG_DWORD /d 0 /f >nul 2>&1
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup /v OOBEInProgressDriverUpdatesPostponed /t REG_DWORD /d 0 /f >nul 2>&1
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v LaunchUserOOBE /f >nul 2>&1
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v DefaultAccountAction /f >nul 2>&1
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v RecoveryOOBEEnabled /f >nul 2>&1
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v DefaultAccountSAMName /f >nul 2>&1
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v DefaultAccountSID /f >nul 2>&1
net user /del defaultuser0 >nul 2>&1
net user /add PC >nul 2>&1
net localgroup Administrateurs /add PC >nul 2>&1
shutdown /t 0 /r >nul 2>&1