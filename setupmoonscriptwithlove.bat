@echo off
set url=https://github.com/andrewsinnovations/moonscriptwithlove/releases/download/Release/moonscriptwithlove-main_20230207.zip
set zipFile=moonscriptwithlove-main_20230207.zip

echo Downloading %url%
powershell -Command "Invoke-WebRequest -Uri %url% -OutFile %zipFile%"

echo Extracting %zipFile%
powershell Expand-Archive %zipFile% -DestinationPath .

echo Cleaning up %zipFile%
del %zipFile%

echo Done!