rem ************************************************************
:com.android.settings��������
rem ************************************************************

:cho_com.android.settings
CLS
@echo ********************************************************
@echo.
@echo                    LEWA��������[��ֲ]����
@echo.
@echo.
@echo ********************************************************
echo --------------------------------------------------------
echo   1.com.android.settings��ֲ
echo   2.com.android.settings���
echo   3.com.android.settings���
echo   4.�������˵�
echo --------------------------------------------------------
set choice=
set /p choice= ѡ����Ҫ���еĲ���:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto com.android.settings_yizhi
if /i "%choice%"=="2" goto com.android.settings_jiebao
if /i "%choice%"=="3" goto com.android.settings_dabao
if /i "%choice%"=="4" tools\bat\menu
echo ѡ����Ч������������
ping 127.0.0.1 -n 2 >NUL
echo.
goto cho_com.android.settings
:com.android.settings_jiebao
if exist theme_done\com.android.settings (tools\7z x theme_done\com.android.settings  -olewa_tmp\com.android.settings\
goto cho_com.android.settings) else goto cho_com.android.settings
:com.android.settings_dabao
if exist lewa_tmp\com.android.settings (del theme_done\com.android.settings
tools\7z a theme_done\com.android.settings.zip .\lewa_tmp\com.android.settings\*
cd theme_done
ren com.android.settings.zip com.android.settings
cd ..
goto cho_com.android.settings) else goto cho_com.android.settings


:com.android.settings_yizhi
echo.
echo ������δ��ɣ������ڴ�
echo.
ping 127.0.0.1 -n 2 >NUL
goto cho_com.android.settings