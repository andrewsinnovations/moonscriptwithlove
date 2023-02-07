cd dist
del *.lua
cd ../src
moonc -t "../dist/" *.moon
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../dist/
love --console .