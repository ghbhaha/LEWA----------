rem ************************************************************
:lewa-res��������
rem ************************************************************

:cho_lewa-res
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
echo   1.lewa-res��ֲ
echo   2.lewa-res���
echo   3.lewa-res���
echo   4.�������˵�
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= ѡ��[0-4]����:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto lewa-res_yizhi
if /i "%choice%"=="2" goto lewa-res_jiebao
if /i "%choice%"=="3" goto lewa-res_dabao
if /i "%choice%"=="4" tools\bat\menu
echo ѡ����Ч������������
ping 127.0.0.1 -n 2 >NUL
echo.
goto cho_lewa-res
:lewa-res_jiebao
if exist theme_done\lewa-res (tools\7z x theme_done\lewa-res  -olewa_tmp\lewa-res\
goto cho_lewa-res) else goto cho_lewa-res
:lewa-res_dabao
if exist lewa_tmp\lewa-res (del theme_done\lewa-res
tools\7z a theme_done\lewa-res.zip .\lewa_tmp\lewa-res\*
cd theme_done
ren lewa-res.zip lewa-res
cd ..
goto cho_lewa-res) else goto cho_lewa-res

:lewa-res_yizhi
echo.
echo ������δ��ɣ������ڴ�
echo.
ping 127.0.0.1 -n 2 >NUL
goto cho_lewa-res