::************************************************************
:���˵�����
::************************************************************
:CHO
cls
@echo ********************************************************
@echo.
@echo                    LEWA��������[��ֲ]����
@echo.
@echo.
@echo ********************************************************
echo.  [ѡ����Ž��в���]
echo --------------------------------------------------------
echo   1.׼���ļ�				
echo   2.icons��ֲ/���/���		
echo   3.lockscreen���/���			
echo   4.framework-res���/���		
echo   5.lewa-res���/���
echo   6.com.lewa.PIM���/���
echo   7.com.android.systemui���/���
echo   8.com.lewa.birdview���/���
echo   9.com.lewa.launcher5���/���		
echo   10.com.android.settings���/���
echo   11.�������
echo   12.�鿴˵��
echo   13.adb�������� 
echo   0.�˳�����
echo. 
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= ѡ��[0-12]����:
IF NOT "%choice%"=="" SET choice=%choice:~0,2%
if /i "%choice%"=="0" EXIT
if /i "%choice%"=="1" goto make_tmp
if /i "%choice%"=="2" tools\bat\icons
if /i "%choice%"=="3" tools\bat\lockscreen
if /i "%choice%"=="4" tools\bat\framework-res
if /i "%choice%"=="5" tools\bat\lewa-res
if /i "%choice%"=="6" tools\bat\com.lewa.PIM
if /i "%choice%"=="7" tools\bat\com.android.systemui
if /i "%choice%"=="8" tools\bat\com.lewa.birdview
if /i "%choice%"=="9" tools\bat\com.lewa.launcher5
if /i "%choice%"=="10" tools\bat\com.android.settings
if /i "%choice%"=="11" goto make_*.lwt
if /i "%choice%"=="12" tools\bat\help
if /i "%choice%"=="13" goto adb
echo ѡ����Ч������������
ping 127.0.0.1 -n 2 >NUL
echo.
goto CHO

 
::************************************************************
:׼���ļ�����
::************************************************************

::************************************************************
:׼����ֲmiui�ļ�����
::************************************************************
:make_tmp
cls
@echo ********************************************************
@echo.
@echo                    LEWA��������[��ֲ]����
@echo.
@echo.
@echo ********************************************************
echo.  [ѡ����Ž��в���]
echo --------------------------------------------------------
echo   1.׼����ֲmiui����				
echo   2.����޸���������		
echo   3.�������˵�		
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= ѡ����Ҫ���еĲ���:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto make_tmp1
if /i "%choice%"=="2" goto make_tmp2
if /i "%choice%"=="3" goto CHO 
echo ѡ����Ч������������
ping 127.0.0.1 -n 2 >NUL
echo.
goto make_tmp

:make_tmp1
@echo ���miui.mtz

::�ж�mtz,������ִ�б��ݾ���Ŀ
if exist *.mtz (if exist theme_done (md %folder%
move "theme_done" %folder%)
::�ж�lewa_tmp
if exist lewa_tmp (move "lewa_tmp" %folder%)
::�ж�lewa_tmp
if exist miui_tmp (move "miui_tmp" %folder%)

move %folder% old_work
goto  make_tmp1_1
 ) else cls
echo.
echo С������mtz�ļ������ڣ��뽫�俽������Ŀ¼��
echo.
echo �����������˵�
echo.
ping 127.0.0.1 -n 2 >NUL
goto make_tmp

:make_tmp1_1
CLS
@echo ********************************************************
@echo.
@echo                    LEWA��������[��ֲ]����
@echo.
@echo.
@echo ********************************************************
echo.
echo.�����ѡ��������miui����
echo.
::�жϸ�Ŀ¼mtz�ļ����б�
set y=0
for %%i in (*mtz) do (set /a y+=1 &&set mtz!y!=%%i &&set mtzx=%%~ni&&echo. !y! �� !mtzx!.mtz&&echo.)
set /p a=��ѡ��������(0�������˵�):
if "%a%"=="0" goto CHO
set b=mtz!a!
for %%i in (%b%) do (tools\7z x "!%%i!"  -omiui_tmp\  )
@echo ����theme_done�ļ���
md theme_done
md theme_done\thumbnail
md theme_done\preview
@echo ��ѹmiui_tmp�ļ�
tools\7z x miui_tmp\icons -omiui_tmp\.icons
tools\7z x miui_tmp\com.android.contacts -omiui_tmp\.com.android.contacts
tools\7z x miui_tmp\com.android.mms  -omiui_tmp\.com.android.mms
tools\7z x miui_tmp\com.android.providers.downloads.ui  -omiui_tmp\.com.android.providers.downloads.ui
tools\7z x miui_tmp\com.android.settings -omiui_tmp\.com.android.settings
tools\7z x miui_tmp\com.android.systemui  -omiui_tmp\.com.android.systemui
tools\7z x miui_tmp\framework-miui-res  -omiui_tmp\.framework-miui-res
tools\7z x miui_tmp\framework-res  -omiui_tmp\.framework-res
tools\7z x miui_tmp\lockscreen  -omiui_tmp\.lockscreen
tools\7z x miui_tmp\com.miui.home  -omiui_tmp\.com.miui.home
ren miui_tmp\wallpaper\default_lock_wallpaper.jpg wallpaper_lockscreen.jpg
ren miui_tmp\wallpaper\default_wallpaper.jpg wallpaper.jpg
xcopy  /e/I/h/r/y/s "miui_tmp\wallpaper" "theme_done\wallpaper"

copy miui_tmp\preview\preview_launcher_0.jpg theme_done\thumbnail\thumbnail.jpg
copy miui_tmp\preview\preview_launcher_0.png theme_done\thumbnail\thumbnail.jpg
copy miui_tmp\preview\preview_launcher_0.jpg theme_done\thumbnail\thumbnail_launcher.jpg
copy miui_tmp\preview\preview_launcher_0.png theme_done\thumbnail\thumbnail_launcher.jpg
copy miui_tmp\preview\preview_lockscreen_0.jpg theme_done\thumbnail\thumbnail_lockscreen.jpg
copy miui_tmp\preview\preview_lockscreen_0.png theme_done\thumbnail\thumbnail_lockscreen.jpg
copy miui_tmp\wallpaper\wallpaper_lockscreen.jpg theme_done\thumbnail\lockscreen_wallpaper.jpg
copy miui_tmp\wallpaper\wallpaper_lockscreen.png theme_done\thumbnail\lockscreen_wallpaper.jpg

xcopy  /e/I/h/r/y/s "miui_tmp\.icons" "lewa_tmp\icons"

copy miui_tmp\preview\preview_launcher_0.jpg theme_done\preview
copy miui_tmp\preview\preview_launcher_0.png theme_done\preview\preview_launcher_0.jpg
copy miui_tmp\preview\preview_launcher_1.jpg theme_done\preview
copy miui_tmp\preview\preview_launcher_1.png theme_done\preview\preview_launcher_1.jpg
copy miui_tmp\preview\preview_lockscreen_0.jpg theme_done\preview
copy miui_tmp\preview\preview_lockscreen_0.png theme_done\preview\preview_lockscreen_0.jpg

copy miui_tmp\com.sds.android.ttpod theme_done
copy miui_tmp\com.tencent.minihd.qq theme_done
copy miui_tmp\com.tencent.mm theme_done
copy miui_tmp\com.tencent.mobileqq theme_done
copy tools\description.xml theme_done
copy miui_tmp\lockscreen theme_done
:del *.mtz
goto CHO

::************************************************************
:׼��lewa�����ļ�����
::************************************************************
:make_tmp2
::�ж�lwt,������ִ�б��ݾ���Ŀ
if exist *.lwt (if exist theme_done (md %folder%
move "theme_done" %folder%)
::�ж�lwt_tmp
if exist lewa_tmp (move "lewa_tmp" %folder%)
::�ж�miui_tmp
if exist miui_tmp (move "miui_tmp" %folder%)

move %folder% old_work
goto  make_tmp2_2
 )  else cls
echo.
echo ��������lwt�ļ������ڣ��뽫�俽������Ŀ¼
echo.
echo ��������׼���ļ��˵�
echo.
ping 127.0.0.1 -n 2 >NUL
goto make_tmp

:make_tmp2_2
CLS
@echo ********************************************************
@echo.
@echo                    LEWA��������[��ֲ]����
@echo.
@echo.
@echo ********************************************************
echo.
echo.�����ѡ��������lewa����
echo.
set y=0
::�жϸ�Ŀ¼lwt�ļ����б�
for %%i in (*lwt) do (set /a y+=1 &&set lwt!y!=%%i &&set lwtx=%%~ni&&echo. !y! �� !lwtx!.lwt&&echo.)
set /p a=��ѡ��������(0�������˵�):
if "%a%"=="0" goto CHO
set b=lwt!a!
for %%i in (%b%) do (@echo ����theme_done�ļ���
tools\7z x "!%%i!"  -otheme_done\ )
tools\7z x theme_done\icons -olewa_tmp\icons
tools\7z x theme_done\com.android.settings -olewa_tmp\com.android.settings
tools\7z x theme_done\com.android.systemui  -olewa_tmp\com.android.systemui
tools\7z x theme_done\com.lewa.launcher5 -olewa_tmp\com.lewa.launcher5
tools\7z x theme_done\com.lewa.PIM  -olewa_tmp\com.lewa.PIM
tools\7z x theme_done\framework-res  -olewa_tmp\framework-res
tools\7z x theme_done\lewa-res  -olewa_tmp\lewa-res
tools\7z x theme_done\lockscreen  -olewa_tmp\lockscreen
:del *.lwt
goto CHO


::************************************************************
:����������
::************************************************************

:make_*.lwt
cls
if exist lewa.lwt (del lewa.lwt )
tools\7z a lewa.zip .\theme_done\*
ren lewa.zip lewa.lwt
goto CHO


::***********************************************************************************************************************
:adb���Ͳ���
::***********************************************************************************************************************
:adb
if exist *.lwt (goto adb1) else cls
echo.
echo ��������lwt�ļ������ڣ��뽫�俽������Ŀ¼
echo.
echo ��������׼���ļ��˵�
echo.
ping 127.0.0.1 -n 2 >NUL
goto CHO

:adb1
rem 14.3.17 adb��������ʶ����ͣ������Ƿ����ӵ��жϣ�ֱ�����ӳɹ�
cls
echo ����ADB�У����Ժ�.
tools\adb kill-server >NUL
tools\adb start-server >NUL
:phonepluggedin
tools\adb devices||find "device"|find /v "List"
IF %ERRORLEVEL% NEQ 0 (
	echo.
	echo Tab û������.
	echo ��Ӻ�������~
	echo �Ժ�...
	tools\adb wait-for-device
	goto phonepluggedin
)
echo �����ӵ������ֻ��������������ͽ���
echo.
ping 127.0.0.1 -n 2 >NUL
cls
@echo ********************************************************
@echo.
@echo                    LEWA��������[��ֲ]����
@echo.
@echo.
@echo ********************************************************
echo.
echo.�����ѡ�����������������
echo.
::�жϸ�Ŀ¼lwt�ļ����б�
set y=0
for %%i in (*lwt) do (set /a y+=1 &&set lwt!y!=%%i &&set lwtx=%%~ni&&echo. !y! �� !lwtx!.lwt&&echo.)
set /p a=��ѡ��������(0�������˵�):
if "%a%"=="0" goto CHO
set b=lwt!a!
for %%i in (%b%) do (
tools\adb push !%%i! /sdcard/LEWA/theme/lwt
echo ������ɣ���������������
ping 127.0.0.1 -n 2 >NUL
pause
goto CHO
)
