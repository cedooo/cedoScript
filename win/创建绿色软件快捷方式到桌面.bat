@echo off
echo set WshShell = WScript.CreateObject("WScript.Shell")>tmp.vbs
echo strDesktop = WshShell.SpecialFolders("Desktop")>>tmp.vbs
echo set psLink = WshShell.CreateShortcut(strDesktop ^& "\PhotoshopCS5.lnk")>>tmp.vbs
echo psLink.TargetPath ="D:\greensoft\AdobePhotoshopCS5\Photoshop.exe">>tmp.vbs
echo psLink.WindowStyle ="1">>tmp.vbs
echo psLink.Hotkey = "CTRL+SHIFT+Q">>tmp.vbs
echo psLink.IconLocation = "D:\greensoft\AdobePhotoshopCS5\Photoshop.exe, 0">>tmp.vbs
echo psLink.Description = "PhotoshopCS5��ݷ�ʽ">>tmp.vbs
echo psLink.WorkingDirectory = strDesktop>>tmp.vbs
echo psLink.Save>>tmp.vbs
call tmp.vbs
del /f /q tmp.vbs


echo set WshShell = WScript.CreateObject("WScript.Shell")>tmp.vbs
echo strDesktop = WshShell.SpecialFolders("Desktop")>>tmp.vbs
echo set nwlink = WshShell.CreateShortcut(strDesktop ^& "\������Ļ����.lnk")>>tmp.vbs
echo nwlink.TargetPath ="D:\greensoft\������Ļ������\������Ļ������.exe">>tmp.vbs
echo nwlink.WindowStyle ="1">>tmp.vbs
echo nwlink.Hotkey = "CTRL+SHIFT+Q">>tmp.vbs
echo nwlink.IconLocation = "D:\greensoft\������Ļ������\������Ļ������.exe, 0">>tmp.vbs
echo nwlink.Description = "PhotoshopCS5��ݷ�ʽ">>tmp.vbs
echo nwlink.WorkingDirectory = strDesktop>>tmp.vbs
echo nwlink.Save>>tmp.vbs
call tmp.vbs
del /f /q tmp.vbs