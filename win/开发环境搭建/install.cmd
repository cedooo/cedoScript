::����windowsִ��powershell�ű��ļ�
powershell set-executionpolicy -executionpolicy unrestricted
::����7-Zip
powershell .\installFile.ps1
::��װ7-zip
%systemdrive%\7zip.msi
::ɾ��7-zip��װ��
del %systemdrive%\7zip.msi

set zipdrive=
set /p "zipdrive=������ZIP����·������س�Ĭ��·��ΪD:\devenv.zip:"
if defined input (echo ZIP����·��������) else (set zipdrive=D:\devenv.zip)

::��ѹdevenv�ļ���C�̸�Ŀ¼
"%programfiles%"\7-zip\7z e -y -spf %zipdrive% -o%systemdrive%\


::����ssh key && ����Java���� && ����maven����
copySSHkey.bat && javaEnvSet.bat && mavenEnvSet.bat
echo ����ssh key���, java�����������, Maven�����������
pause