rem ************************************************************
:com.lewa.PIM��������
rem ************************************************************

:cho_com.lewa.PIM
CLS
@echo ********************************************************
@echo.
@echo                    LEWA��������[��ֲ]����
@echo.
@echo.
@echo ********************************************************
echo --------------------------------------------------------
echo   1.com.lewa.PIM��ֲ
echo   2.com.lewa.PIM���
echo   3.com.lewa.PIM���
echo   4.�������˵�
echo --------------------------------------------------------
set choice=
set /p choice= ѡ����Ҫ���еĲ���:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto com.lewa.PIM_yizhi
if /i "%choice%"=="2" goto com.lewa.PIM_jiebao
if /i "%choice%"=="3" goto com.lewa.PIM_dabao
if /i "%choice%"=="4" tools\bat\menu
echo ѡ����Ч������������
ping 127.0.0.1 -n 2 >NUL
echo.
goto cho_com.lewa.PIM
:com.lewa.PIM_jiebao
if exist theme_done\com.lewa.PIM (tools\7z x theme_done\com.lewa.PIM  -olewa_tmp\com.lewa.PIM\
goto cho_com.lewa.PIM) else goto cho_com.lewa.PIM
:com.lewa.PIM_dabao
if exist lewa_tmp\com.lewa.PIM (del theme_done\com.lewa.PIM
tools\7z a theme_done\com.lewa.PIM.zip .\lewa_tmp\com.lewa.PIM\*
cd theme_done
ren com.lewa.PIM.zip com.lewa.PIM
cd ..
goto cho_com.lewa.PIM) else goto cho_com.lewa.PIM

:com.lewa.PIM_yizhi
echo.
echo ������δ��ɣ������ڴ�
echo.
ping 127.0.0.1 -n 2 >NUL
goto cho_com.lewa.PIM