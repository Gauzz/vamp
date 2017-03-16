title SPEECH DEPLOY TOOL
@echo off
color 0a
mode con:cols=90 lines=30
echo                             WELCOME TO SPEECH DEPLOY TOOL 
  
echo Enter the name of file
set /p fil=
echo set a=createobject("sapi.spvoice") >>%fil%.vbs
echo do >>%fil%.vbs
echo Enter the text to speak
set /p input=
echo a.speak "%input%" >>%fil%.vbs 
echo loop >>%fil%.vbs
attrib %fil%.vbs 
echo start %fil%.vbs >>%fil%.bat
if exist %fil%.vbs  echo You have successfully created your virus
color
pause >nul