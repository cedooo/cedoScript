@echo off

:: TODO:����ssh��ϵͳĬ��sshĿ¼��
color 02
::����SSH key ·��
echo ��ʹ�ù���Ա���ִ��
set input=
set /p "input=������SSH key·������س�Ĭ��·��Ϊ%systemdrive%\devenv\ssh��:"
if defined input (echo SSH key·��������) else (set input=%systemdrive%\devenv\ssh)
::���.ssh�ļ��в����ڣ����Զ������ļ���
if not exist %systemdrive%%homepath%\.ssh mkdir %systemdrive%%homepath%\.ssh

copy %input%\id_rsa %systemdrive%%homepath%\.ssh\id_rsa
copy %input%\id_rsa.pub %systemdrive%%homepath%\.ssh\id_rsa.pub
