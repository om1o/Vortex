@echo off
REM Launches a local web server for the VORTEX scroll site and opens it.
REM A web server is required because the page uses ES modules.
cd /d "%~dp0"
start "VORTEX local server" cmd /c python -m http.server 8123
timeout /t 1 >nul
start "" "http://localhost:8123/index.html"
echo.
echo VORTEX site running at http://localhost:8123
echo Close the "VORTEX local server" window to stop it.
