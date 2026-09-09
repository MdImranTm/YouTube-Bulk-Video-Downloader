@echo off
setlocal EnableExtensions
chcp 65001 >nul 2>&1
title YT Bulk Downloader - Dependency Setup

cls
echo ==============================================================
echo                  YT Bulk Downloader Setup
echo ==============================================================
echo.
echo This installs/repairs the required command-line dependencies:
echo   - yt-dlp
 echo   - FFmpeg / ffprobe
 echo   - Deno
 echo.

where winget >nul 2>&1
if errorlevel 1 (
  echo [ERROR] WinGet was not found.
  echo Install/update App Installer from Microsoft Store, then run this again.
  pause
  exit /b 1
)

echo [1/3] yt-dlp...
winget install --id yt-dlp.yt-dlp --exact --source winget --accept-source-agreements --accept-package-agreements

echo.
echo [2/3] FFmpeg...
winget install --id Gyan.FFmpeg --exact --source winget --accept-source-agreements --accept-package-agreements

echo.
echo [3/3] Deno...
winget install --id DenoLand.Deno --exact --source winget --accept-source-agreements --accept-package-agreements

echo.
echo ==============================================================
echo Setup finished.
echo Close this window, reopen YT-Bulk-Downloader.exe, and click TRY AGAIN.
echo ==============================================================
pause
