@echo off

REM Check if controlpad server is already running
tasklist /FI "IMAGENAME eq server.exe" | find /i "server.exe" > nul
if %errorlevel% equ 0 (
    echo Closing existing server.exe process...
    taskkill /F /IM my_server.exe > nul
)

REM Check if Node.js server is already running
tasklist /FI "IMAGENAME eq node.exe" | find /i "node.exe" > nul
if %errorlevel% equ 0 (
    echo Closing existing Node.js server process...
    taskkill /F /IM node.exe > nul
)

REM Run my_server.exe
start "" "server.exe"

REM Run Node.js server
node "node_server.js"
