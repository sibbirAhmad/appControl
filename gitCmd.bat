@ECHO OFF 


:CHECK 
echo Enter Your Command:

set/p "pass=>" 
if %pass%== push goto PUSH
if %pass%==pull goto PULL
if %pass%==commit goto COMMIT

:PUSH
git push origin master

echo ----------------------------------- Successfully Pushed------------------
Timeout 60>nul
goto END

:PULL
git pull origin
echo ----------------------------------- Successfully Pulled------------------
Timeout 60>nul
goto END

:COMMIT
echo "Enter your commit message:"
set/p "pass=>" 
git add -A
git commit -m " %pass% "
echo ----------------------------------- Successfully Committed------------------
Timeout 60>nul
goto CHECK

:END