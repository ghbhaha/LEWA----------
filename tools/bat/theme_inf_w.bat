:menu
set /p theme_name_z=<"tools\theme_inf\theme_name_z.txt"
set /p theme_name_e=<"tools\theme_inf\theme_name_e.txt"
set /p theme_author=<"tools\theme_inf\theme_author.txt"
cls
@echo ********************************************************
@echo.
@echo               LEWA��������[��ֲ]����%version%
@echo.
@echo.
@echo ********************************************************
echo --------------------------------------------------------
echo.  [ѡ����Ž��в���]
echo --------------------------------------------------------
echo   1.�޸��������ƣ��У�		
echo   2.�޸��������ƣ�Ӣ��
echo   3.�޸���������
echo   4.����description.xml	
echo   5.�������˵�		
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= ѡ��[0-5]����:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto set_theme_name_z
if /i "%choice%"=="2" goto set_theme_name_e
if /i "%choice%"=="3" goto set_theme_author
if /i "%choice%"=="4" goto done
if /i "%choice%"=="5" tools\bat\menu
echo ѡ����Ч������������
ping 127.0.0.1 -n 2 >NUL
echo.
goto menu

:done
call tools\bat\theme_inf_r.bat
goto menu

:set_theme_name_z
echo �������������ƣ��У�:
call tools\theme_inf\theme_name_z.txt
goto menu

rem set /p user=�������������ƣ��У�:
rem copy nul tools\theme_inf\theme_name_z.txt
rem for %%i in (tools\theme_inf\theme_name_z.txt) do echo %user%  >>%%i
rem goto menu

:set_theme_name_e

echo �������������ƣ�Ӣ��:
call tools\theme_inf\theme_name_e.txt
goto menu
rem set /p user=�������������ƣ�Ӣ��:
rem echo %user%>tools\theme_inf\theme_name_e.txt
rem goto menu

:set_theme_author
echo ��������������:
call tools\theme_inf\theme_author.txt
goto menu
rem et /p user=��������������:
rem echo %user%>tools\theme_inf\theme_author.txt
rem goto menu