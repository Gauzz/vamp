@echo off

set message=" TYPE THE FILE NAME "
set heading=" VAMP "
title execute
echo wscript.echo inputbox(WScript.Arguments(0),WScript.Arguments(1))>"%temp%\input.vbs"
for /f "tokens=* delims=" %%a in ('cscript //nologo "%temp%\input.vbs" "%message%" "%heading%"') do set input=%%a

 
cd C:\vamp\bin
title %input%


if exist %input%.gaurav  goto :make

:ex
timeout /t 10 
echo the file does not exist
pause
exit
:make
cd C:\vamp\bin
echo @echo off >%input%.bat
echo cd C:\vamp\bin >>%input%.bat
echo title %input% >> %input%.bat
echo CHIP.EXE 3 %input%.gaurav >> %input%.bat
echo exit >>%input%.bat


start conv.bat %input%.bat %input%.exe



