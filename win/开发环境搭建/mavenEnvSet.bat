@echo off

:: TODO:����maven��������
color 02
::����java�İ�װ·�����ɷ����л���ͬ�İ汾
echo ��ʹ�ù���Ա���ִ��
set input=
set /p "input=������maven·������س�Ĭ��·��Ϊ%systemdrive%\devenv\apache-maven-3.3.9��:"
if defined input (echo maven·��������) else (set input=%systemdrive%\devenv\apache-maven-3.3.9)
echo maven·��Ϊ%input%
set mvnPath=%input%

::�ڻ�������path�У� ȥ��mvn�е��ַ�
call set xx=%Path%;%mvnPath%\bin

echo %xx%

::�������Ե��ַ����¸�ֵ��path��
wmic ENVIRONMENT where "name='Path' and username='<system>'" set VariableValue="%xx%"

pause