@echo off
echo "CPU :"	
wmic cpu get Name

echo "RAM : "
wmic memorychip get Capacity, Manufacturer, Speed 

echo "DISK :"	
wmic diskdrive get DeviceID, Model, Size

diskpart /s list_disk.txt 

set /p disknum=Numero du disque :

diskpart /s partition.txt

D:
cd sources 
dism /apply-image /imagefile:install.wim /index:6 /applydir:W:
bcdboot W:\Windows /s Z:
copy setup-post.bat W:\
reg load HKLM\SYSTEMBAK W:\Windows\System32\config\SYSTEM
reg add "HKLM\SYSTEMBAK\Setup" /v CmdLine  /t REG_SZ /d "C:\setup-post.bat" /f
wpeutil reboot