@echo off
set step=0
set /p num=num : 
set num0=%num%
:loop
set num1=%num%

:: ¦��Ȧ�� Ȯ��
set /a evenodd=%num%%%"2"

:: num�� ¦���� �� ��ȣ ���� ������ ����
if %evenodd%==0 (
	set /a num/=2
)

:: num�� Ȧ���� �� ��ȣ ���� ������ ����
if %evenodd%==1 (
	set /a num*=3
	set /a num+=1
)

:: ������ ���
if %evenodd%==0 (
	echo %num1% is even �� %num%) else (
	echo %num1% is odd �� %num%)
set /a step+=1

:: ������ �����ϸ� ���� ����
if %num%==1 (
	echo Success!
	echo %num0% Step : %step%
	pause
	exit /b
)
goto loop
