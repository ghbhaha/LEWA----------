rem ************************************************************
:com.lewa.birdview��������
rem ************************************************************

:cho_com.lewa.birdview
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
echo   1.com.lewa.birdview��ֲ
echo   2.com.lewa.birdview���
echo   3.com.lewa.birdview���
echo   4.�������˵�
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= ѡ��[0-4]����:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto com.lewa.birdview_yizhi
if /i "%choice%"=="2" goto com.lewa.birdview_jiebao
if /i "%choice%"=="3" goto com.lewa.birdview_dabao
if /i "%choice%"=="4" tools\bat\menu
echo ѡ����Ч������������
ping 127.0.0.1 -n 2 >NUL
echo.
goto cho_com.lewa.birdview

:com.lewa.birdview_jiebao
xcopy  /e/I/h/r/y/s "tools\ȫ�������׼��Դ��\com.lewa.birdview\res\drawable-nodpi" "lewa_tmp\com.lewa.birdview\res\drawable-nodpi"


if exist theme_done\com.lewa.birdview (tools\7z x theme_done\com.lewa.birdview  -olewa_tmp\com.lewa.birdview\
goto cho_com.lewa.birdview) else goto cho_com.lewa.birdview


:com.lewa.birdview_dabao
if exist lewa_tmp\com.lewa.birdview (del theme_done\com.lewa.birdview
tools\7z a theme_done\com.lewa.birdview.zip .\lewa_tmp\com.lewa.birdview\*
cd theme_done
ren com.lewa.birdview.zip com.lewa.birdview
cd ..
goto cho_com.lewa.birdview) else goto cho_com.lewa.birdview

:com.lewa.birdview_yizhi
xcopy  /e/I/h/r/y/s "tools\ȫ�������׼��Դ��\com.lewa.birdview\res\drawable-nodpi" "lewa_tmp\com.lewa.birdview\res\drawable-nodpi"
copy miui_tmp\wallpaper\wallpaper_lockscreen.jpg lewa_tmp\com.lewa.birdview\res\drawable-nodpi\bv_bg.png
copy miui_tmp\wallpaper\wallpaper_lockscreen.png lewa_tmp\com.lewa.birdview\res\drawable-nodpi\bv_bg.png
if exist lewa_tmp\com.lewa.birdview (del theme_done\com.lewa.birdview
tools\7z a theme_done\com.lewa.birdview.zip .\lewa_tmp\com.lewa.birdview\*
cd theme_done
ren com.lewa.birdview.zip com.lewa.birdview
cd ..
goto cho_com.lewa.birdview) else goto cho_com.lewa.birdview
echo.
echo.
ping 127.0.0.1 -n 2 >NUL
goto cho_com.lewa.birdview