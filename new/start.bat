@echo off
setlocal

title GDWeb Console V1.0
cd

start /max http://127.0.0.1:8888
echo Starting...
echo Started successfully!
echo Press 'CTRL + C' or close this window to stop the server while in this Command Prompt window.

echo %DATE% %TIME% - Server started with "0" errors. >> log.txt

python -m http.server 8888 --bind 0.0.0.0

echo %DATE% %TIME% - Server stopped with "0" errors. >> log.txt

endlocal