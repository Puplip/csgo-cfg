@echo off

for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set datetime="%mydate%_%time%"

git pull origin master

git add -u
git commit -m %datetime%
git push origin master -f