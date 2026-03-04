@echo off
set /p msg="Enter commit message (Leave blank for 'Update app-ads.txt'): "
if "%msg%"=="" set msg=Update app-ads.txt

echo [1/3] Adding app-ads.txt...
git add app-ads.txt

echo [2/3] Committing changes...
git commit -m "%msg%"

echo [3/3] Uploading to GitHub...
git push origin main

echo.
echo Done! Please check: https://noisecamera.github.io/app-ads.txt
pause