@echo off
setlocal EnableExtensions
title YT Bulk Downloader - Update Dependencies
where winget >nul 2>&1 || (echo WinGet not found.& pause & exit /b 1)
echo Updating yt-dlp...
winget upgrade --id yt-dlp.yt-dlp --exact --source winget --accept-source-agreements --accept-package-agreements
echo Updating FFmpeg...
winget upgrade --id Gyan.FFmpeg --exact --source winget --accept-source-agreements --accept-package-agreements
echo Updating Deno...
winget upgrade --id DenoLand.Deno --exact --source winget --accept-source-agreements --accept-package-agreements
echo.
echo Done. Reopen the app after PATH-changing updates.
pause
