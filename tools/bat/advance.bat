::************************************************************
:CHO
cls
@echo ********************************************************
@echo.
@echo               LEWA��������[��ֲ]����%version%
@echo                          �߼�����
@echo.
@echo ********************************************************
echo --------------------------------------------------------
echo.  [ѡ����Ž��в���]
echo --------------------------------------------------------
echo   1.ϵͳ��ʽ				
echo   2.�������		
echo   3.�������˵�
echo. 
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= ѡ��[0-3]����:
IF NOT "%choice%"=="" SET choice=%choice:~0,2%
if /i "%choice%"=="1" goto style_sys
if /i "%choice%"=="2" goto style_lock
if /i "%choice%"=="3" tools\bat\menu
echo ѡ����Ч������������
ping 127.0.0.1 -n 2 >NUL
echo.
goto CHO


:style_sys
cls
@echo ********************************************************
@echo.
@echo               LEWA��������[��ֲ]����%version%
@echo                          ϵͳ��ʽ
@echo.
@echo ********************************************************
echo.  [ѡ����Ž��в���]
echo --------------------------------------------------------
echo   1.lewaĬ��ϵͳ��ʽ(lewa)
echo   2.��ڷ��(JARASTAFARIN)
echo   3.��ɫ���(���Ȳ���)
echo   4.�������˵�
echo. 
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= ѡ��[0-4]����:
IF NOT "%choice%"=="" SET choice=%choice:~0,2%
if /i "%choice%"=="1" goto style_sys_white
if /i "%choice%"=="2" goto style_sys_black
if /i "%choice%"=="2" goto style_sys_green
if /i "%choice%"=="3" tools\bat\menu
echo ѡ����Ч������������
ping 127.0.0.1 -n 2 >NUL
echo.
goto CHO
:style_sys_white
xcopy  /e/I/h/r/y/s "tools\advance\style_sys\lewa_default" "theme_done"
goto style_sys

:style_sys_black

xcopy  /e/I/h/r/y/s "tools\advance\style_sys\Dark_Side_G" "theme_done"
goto style_sys

:style_sys_green
xcopy  /e/I/h/r/y/s "tools\advance\style_sys\qx_green" "theme_done"
goto style_sys

:style_lock
cls
@echo ********************************************************
@echo.
@echo               LEWA��������[��ֲ]����%version%
@echo                          �������
@echo.
@echo ********************************************************
echo.  [ѡ����Ž��в���]
echo --------------------------------------------------------
echo   1.lewaĬ��(����ɫ)				
echo   2.lewaĬ��(���Ǻ�ɫ)
echo   3.�������˵�
echo. 
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= ѡ��[0-3]����:
IF NOT "%choice%"=="" SET choice=%choice:~0,2%
if /i "%choice%"=="1" goto style_lock_default
if /i "%choice%"=="2" goto style_lock_n
if /i "%choice%"=="3" tools\bat\menu
echo ѡ����Ч������������
ping 127.0.0.1 -n 2 >NUL
echo.
goto CHO
:style_lock_default
copy tools\advance\style_lock\lockscreen_default theme_done
goto style_sys

:style_lock_n
copy tools\advance\style_lock\lockscreen_n theme_done
goto style_sys