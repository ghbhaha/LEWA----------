rem ************************************************************
:com.android.systemui��������
rem ************************************************************

:cho_com.android.systemui
CLS
@echo ********************************************************
@echo.
@echo                    LEWA��������[��ֲ]����
@echo.
@echo.
@echo ********************************************************
echo --------------------------------------------------------
echo   1.com.android.systemui��ֲ
echo   2.com.android.systemui���
echo   3.com.android.systemui���
echo   4.�������˵�
echo --------------------------------------------------------
set choice=
set /p choice= ѡ����Ҫ���еĲ���:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto com.android.systemui_yizhi
if /i "%choice%"=="2" goto com.android.systemui_jiebao
if /i "%choice%"=="3" goto com.android.systemui_dabao
if /i "%choice%"=="4" tools\bat\menu
echo ѡ����Ч������������
ping 127.0.0.1 -n 2 >NUL
echo.
goto cho_com.android.systemui
:com.android.systemui_jiebao
xcopy  /e/I/h/r/y/s "tools\ȫ�������׼��Դ��\\com.android.systemui\res\drawable-xhdpi" "lewa_tmp\\com.android.systemui\res\drawable-xhdpi"

if exist theme_done\com.android.systemui (tools\7z x theme_done\com.android.systemui  -olewa_tmp\com.android.systemui\
goto cho_com.android.systemui) else goto cho_com.android.systemui
:com.android.systemui_dabao
if exist lewa_tmp\com.android.systemui (del theme_done\com.android.systemui
tools\7z a theme_done\com.android.systemui.zip .\lewa_tmp\com.android.systemui\*
cd theme_done
ren com.android.systemui.zip com.android.systemui
cd ..
goto cho_com.android.systemui) else goto cho_com.android.systemui


:com.android.systemui_yizhi
xcopy  /e/I/h/r/y/s "tools\ȫ�������׼��Դ��\com.android.systemui\res\drawable-xhdpi" "lewa_tmp\com.android.systemui\res\drawable-xhdpi"
copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\tab_notifications_bg_n.9.png lewa_tmp\com.android.systemui\res\drawable-nodpi\switch_tab_left.png

copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\tab_notifications_bg_p.9.png lewa_tmp\com.android.systemui\res\drawable-nodpi\switch_tab_right.png

copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\tab_toggles_bg_n.9.png lewa_tmp\com.android.systemui\res\drawable-nodpi\switch_tab_off.png

copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\tab_toggles_bg_p.9.png lewa_tmp\com.android.systemui\res\drawable-nodpi\switch_tab_on.png

if exist lewa_tmp\com.android.systemui (del theme_done\com.android.systemui
tools\7z a theme_done\com.android.systemui.zip .\lewa_tmp\com.android.systemui\*
cd theme_done
ren com.android.systemui.zip com.android.systemui
cd ..
goto cho_com.android.systemui) else goto cho_com.android.systemui
echo.
echo.
ping 127.0.0.1 -n 2 >NUL
goto cho_com.android.systemui