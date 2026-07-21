@echo off
chcp 65001 >nul
echo ===== Restarting Server =====
echo.
echo Pulling latest code...
git pull origin main
echo.
echo Killing previous node processes on port 3000...
for /f "tokens=5" %%a in ('netstat -ano ^| findstr :3000 ^| findstr LISTENING') do taskkill /F /PID %%a 2>nul
echo.
echo Starting server...
start "EvanHome" node server.js
echo Server restarted at http://localhost:3000/
