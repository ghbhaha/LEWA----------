rem ************************************************************
:com.lewa.launcher5��������
rem ************************************************************

:cho_com.lewa.launcher5
CLS
@echo ********************************************************
@echo.
@echo               LEWA��������[��ֲ]����%version%
@echo.
@echo.                                  
@echo ********************************************************
echo --------------------------------------------------------
echo.  [ѡ����Ž��в���]
echo --------------------------------------------------------
echo   1.com.lewa.launcher5��ֲ
echo   2.com.lewa.launcher5���
echo   3.com.lewa.launcher5���
echo   4.�������˵�
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= ѡ��[0-4]����:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto com.lewa.launcher5_yizhi
if /i "%choice%"=="2" goto com.lewa.launcher5_jiebao
if /i "%choice%"=="3" goto com.lewa.launcher5_dabao
if /i "%choice%"=="4" tools\bat\menu
echo ѡ����Ч������������
ping 127.0.0.1 -n 2 >NUL
echo.
goto cho_com.lewa.launcher5
:com.lewa.launcher5_jiebao
if exist theme_done\com.lewa.launcher5 (tools\7z x theme_done\com.lewa.launcher5  -olewa_tmp\com.lewa.launcher5\
goto cho_com.lewa.launcher5) else goto cho_com.lewa.launcher5
:com.lewa.launcher5_dabao
if exist lewa_tmp\com.lewa.launcher5 (del theme_done\com.lewa.launcher5
tools\7z a theme_done\com.lewa.launcher5.zip .\lewa_tmp\com.lewa.launcher5\*
cd theme_done
ren com.lewa.launcher5.zip com.lewa.launcher5
cd ..
goto cho_com.lewa.launcher5) else goto cho_com.lewa.launcher5

:com.lewa.launcher5_yizhi
echo.
echo ������δ��ɣ������ڴ�
echo.
ping 127.0.0.1 -n 2 >NUL
goto cho_com.lewa.launcher5