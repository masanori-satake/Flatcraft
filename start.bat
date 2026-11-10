@echo off
rem Flatcraft one-click launcher (Windows)
rem Double-click this file: starts the local server and opens the app in your browser.
setlocal
cd /d "%~dp0"
start "Flatcraft Server - close the small window to stop" /min powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0server.ps1"
timeout /t 1 /nobreak >nul
start "" "http://localhost:8765/"
endlocal
