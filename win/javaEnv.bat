@echo off

:: TODO:����java��������
color 02
::����java�İ�װ·�����ɷ����л���ͬ�İ汾
echo ��ʹ�ù���Ա���ִ��
set input=
set /p "input=������java��jdk·������س�Ĭ��·��ΪC:\devenv\java\jdk779��:"
if defined input (echo jdk������) else (set input=C:\devenv\java\jdk779)
echo jdk·��Ϊ%input%
set javaPath=%input%

::����еĻ�����ɾ��JAVA_HOME
wmic ENVIRONMENT where "name='JAVA_HOME'" delete

::����еĻ�����ɾ��ClASS_PATH 
wmic ENVIRONMENT where "name='CLASS_PATH'" delete

::����JAVA_HOME
wmic ENVIRONMENT create name="JAVA_HOME",username="<system>",VariableValue="%javaPath%"

::����CLASS_PATH
wmic ENVIRONMENT create name="CLASS_PATH",username="<system>",VariableValue=".;%%JAVA_HOME%%\lib\tools.jar;%%JAVA_HOME%%\lib\dt.jar;"

::�ڻ�������path�У��޳�������java_home�е��ַ�������ʣ�µ��ַ���
call set xx=%Path%;%javaPath%\jre\bin;%javaPath%\bin

echo %xx%

::�������Ե��ַ����¸�ֵ��path��
wmic ENVIRONMENT where "name='Path' and username='<system>'" set VariableValue="%xx%"

pause