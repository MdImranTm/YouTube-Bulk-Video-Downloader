<div align="center">

<img src="./YT-Bulk-Downloader.png" width="120" alt="YT Bulk Downloader icon">

# YT Bulk Downloader

### A clean Windows GUI for downloading one video or many links with yt-dlp + FFmpeg

Paste links line-by-line, choose quality, watch **live per-video + overall batch progress**, and keep the complete download queue visible in one compact Windows interface.

<br>

[![Download EXE](https://img.shields.io/badge/Download-Portable%20EXE-22C55E?style=for-the-badge&logo=windows11&logoColor=white)](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/raw/refs/heads/main/YT-Bulk-Downloader.exe)
[![Download ZIP](https://img.shields.io/badge/Download-Windows%20ZIP-2F81F7?style=for-the-badge&logo=windows&logoColor=white)](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/raw/refs/heads/main/YT-Bulk-Downloader-v1.3.0-Windows-x64.zip)

<br>

[![Release](https://img.shields.io/github/v/release/MdImranTm/YouTube-Bulk-Video-Downloader?display_name=tag&style=flat-square)](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/releases)
[![Windows](https://img.shields.io/badge/Windows-10%20%7C%2011-0078D4?style=flat-square&logo=windows)](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader)
[![License](https://img.shields.io/badge/License-MIT-22C55E?style=flat-square)](./LICENSE)
[![Stars](https://img.shields.io/github/stars/MdImranTm/YouTube-Bulk-Video-Downloader?style=flat-square)](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/stargazers)
[![Issues](https://img.shields.io/github/issues/MdImranTm/YouTube-Bulk-Video-Downloader?style=flat-square)](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/issues)

</div>

![YT Bulk Downloader preview](./social-preview.png)

---

## What is YT Bulk Downloader?

**YT Bulk Downloader** is a portable Windows desktop app that gives `yt-dlp` and `FFmpeg` a simple graphical interface.

You do not need to create a JSON file, use a terminal for every download, or manually run long yt-dlp commands. Just paste one or many links, select the quality, choose a folder, and start the queue.

It is designed for users who want:

- a simple Windows interface
- bulk downloading
- visible queue status
- per-video progress
- overall batch progress
- easy dependency setup
- no command window during normal use

---

# Download

You can use the app in **two ways**.

## Option 1 — Direct EXE

If you want the fastest setup, download only the portable executable:

### [Download `YT-Bulk-Downloader.exe`](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/raw/refs/heads/main/YT-Bulk-Downloader.exe)

Then double-click:

```text
YT-Bulk-Downloader.exe
```

The app itself does **not** need installation.

> yt-dlp, FFmpeg/ffprobe, and Deno are still required. The app can check and install missing dependencies for you.

---

## Option 2 — Full Windows ZIP package

Recommended for new users:

### [Download `YT-Bulk-Downloader-v1.3.0-Windows-x64.zip`](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/raw/refs/heads/main/YT-Bulk-Downloader-v1.3.0-Windows-x64.zip)

The ZIP contains the app and setup/helper files.

After downloading:

```text
Right-click ZIP
→ Extract All
→ Open extracted folder
→ Double-click YT-Bulk-Downloader.exe
```

You can also check the [GitHub Releases page](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/releases) for newer versions.

---

# Quick Start — Step by Step

## Step 1 — Open the app

Double-click:

```text
YT-Bulk-Downloader.exe
```

The app opens directly in its Windows interface.

You should see these main sections:

```text
STEP 1 - REQUIREMENTS
STEP 2 - PASTE YOUTUBE LINKS
STEP 3 - DOWNLOAD SETTINGS
DOWNLOAD PROGRESS / QUEUE
```

---

## Step 2 — Check requirements

The app checks whether these tools are available:

```text
yt-dlp
ffmpeg
ffprobe
deno
```

Each requirement should show as **Ready / Installed**.

If something is missing, click:

```text
INSTALL MISSING
```

The app only installs components that are actually missing.

You can also click:

```text
TRY AGAIN
```

after installing dependencies or changing PATH.

### Manual installation with WinGet

If you prefer to install everything yourself:

```powershell
winget install --id yt-dlp.yt-dlp --exact --source winget
winget install --id Gyan.FFmpeg --exact --source winget
winget install --id DenoLand.Deno --exact --source winget
```

After installation, close and reopen the app so Windows can refresh environment paths.

---

## Step 3 — Paste one or many links

Paste links directly into the large links box.

One link:

```text
https://www.youtube.com/watch?v=VIDEO_ID
```

Multiple links:

```text
https://www.youtube.com/watch?v=VIDEO_ID_1
https://www.youtube.com/watch?v=VIDEO_ID_2
https://youtu.be/VIDEO_ID_3
https://www.youtube.com/shorts/VIDEO_ID_4
```

### Important

Use **one link per line**.

You can paste:

- 1 link
- 2 links
- 10 links
- 20+ links
- mixed YouTube URL formats

Duplicate links are automatically ignored.

You can use:

```text
Ctrl + V
```

or click:

```text
PASTE
```

The app should show something like:

```text
4 YouTube link(s) ready
```

---

# Step 4 — Choose download settings

Select the folder where videos will be saved.

Then choose a quality preset.

## Available quality presets

### Best MP4

Downloads the best practical video + audio combination and produces a normal video file when possible.

### Up to 1080p

Limits video resolution to a maximum of 1080p.

### Up to 720p

Useful when you want smaller files and faster downloads.

### MP3 audio only

Extracts audio using FFmpeg and saves it as MP3.

---

## Optional settings

Depending on the current app version, you can enable:

- metadata
- thumbnail
- English subtitles
- browser cookies

### Browser cookies

Optional browser-cookie support can help with content that requires your own authorized YouTube session.

Supported browser selections may include:

```text
Chrome
Edge
Firefox
```

Only use browser cookies with accounts/content you are authorized to access.

---

# Step 5 — Start downloading

Click:

```text
START DOWNLOAD
```

The app processes the queue one item at a time while keeping the complete batch visible.

You can stop the current batch with:

```text
STOP
```

---

# Professional Progress Tracking

YT Bulk Downloader shows **two different types of progress**.

## 1. Current video progress

Shows how much of the active video has downloaded.

Example:

```text
Current video: 72.4%
Speed: 5.4 MiB/s
ETA: 00:14
```

## 2. Overall batch progress

The overall bar represents the complete list.

For example, if you have 20 videos, completing the first video does **not** make the overall bar show 100%.

Example:

```text
Overall: 38%
Current: 8 of 20
Current video: 72.4%
Speed: 5.4 MiB/s
ETA: 00:14
```

Queue example:

```text
#   VIDEO / LINK                  STATUS        PROGRESS
1   First video                   Completed     100.0%
2   Second video                  Completed     100.0%
3   Third video                   Completed     100.0%
4   Current video                 Downloading    72.4%
5   Next video                    Queued           0.0%
```

Possible queue states include:

```text
Queued
Downloading
Processing
Completed
Failed
Stopped
```

If one item fails, the app can mark it as **Failed** and continue to the next queued item.

---

# Supported YouTube URL Styles

The link parser is designed for common YouTube URL formats supported by yt-dlp, including:

- standard YouTube watch links
- `youtu.be` links
- YouTube Shorts
- playlists
- mobile YouTube links
- music.youtube.com links
- channel/video pages supported by yt-dlp

Examples:

```text
https://www.youtube.com/watch?v=VIDEO_ID
https://youtu.be/VIDEO_ID
https://www.youtube.com/shorts/VIDEO_ID
https://www.youtube.com/playlist?list=PLAYLIST_ID
```

Actual availability depends on:

- yt-dlp support
- YouTube changes
- region
- account/login requirements
- video availability
- copyright/access restrictions

---

# Requirements

| Requirement | Purpose |
|---|---|
| Windows 10 / 11 x64 | Operating system |
| PowerShell 5.1+ | Windows backend integration |
| yt-dlp | Video extraction/download |
| FFmpeg | Audio/video merge and conversion |
| ffprobe | Media inspection |
| Deno | Runtime used by current yt-dlp YouTube workflows |
| Internet connection | Video downloads and dependency installation |

---

# Dependency Setup

## Automatic

The easiest method is:

```text
Open app
→ Check Requirements
→ INSTALL MISSING
→ TRY AGAIN
```

## Setup helper

If included in the ZIP, you can also run:

```text
Setup-Dependencies.cmd
```

## Update dependencies

To update installed tools, use:

```text
Update-Dependencies.cmd
```

or update them manually with WinGet.

---

# Why a tool can show as Missing even when installed

Windows PATH changes do not always become available inside apps that were already open.

If you just installed a dependency:

```text
1. Close YT Bulk Downloader
2. Close old Command Prompt / PowerShell windows
3. Reopen YT Bulk Downloader
4. Click TRY AGAIN
```

The app also checks common WinGet, Scoop, and Chocolatey locations to reduce false missing results.

---

# Windows Security / SmartScreen

The executable is configured with an **`asInvoker`** manifest.

This means simply opening:

```text
YT-Bulk-Downloader.exe
```

does not intentionally request administrator elevation.

However, Windows may still show:

```text
Microsoft Defender SmartScreen
Unknown publisher
Windows protected your PC
```

for an unsigned executable downloaded from the internet.

That is Windows reputation/code-signing behavior, not a custom popup from YT Bulk Downloader.

Installing dependencies through WinGet may also trigger a normal Windows permission prompt when elevation is required.

A trusted code-signing certificate is the proper way for a public application to improve the publisher/reputation experience.

---

# Verify Downloads

SHA-256 hashes are included in:

```text
SHA256SUMS.txt
```

To check the EXE:

```powershell
Get-FileHash .\YT-Bulk-Downloader.exe -Algorithm SHA256
```

Compare the result with the published value in `SHA256SUMS.txt`.

---

# Troubleshooting

## Links paste correctly but app says no valid links

Make sure you are using normal YouTube URLs and one URL per line.

Example:

```text
https://www.youtube.com/watch?v=VIDEO_ID
```

Then check that the newest app version is being used.

---

## yt-dlp / FFmpeg / Deno shows Missing

Try:

```text
TRY AGAIN
```

If still missing:

```text
Close app
→ reopen app
→ check again
```

You can verify manually:

```cmd
yt-dlp --version
ffmpeg -version
ffprobe -version
deno --version
```

---

## Download fails

Possible causes include:

- video removed
- private video
- age/account restriction
- regional restriction
- YouTube changed something upstream
- yt-dlp is outdated
- internet problem

Update yt-dlp and try again.

---

## Video downloads but audio/video merge fails

Check FFmpeg:

```cmd
ffmpeg -version
```

and:

```cmd
ffprobe -version
```

Then restart the app.

---

## Browser-cookie errors

Try another supported browser or disable browser-cookie mode if the video does not require login.

Never share exported browser cookies publicly.

---

# Project Structure

```text
YouTube-Bulk-Video-Downloader/
│
├── YT-Bulk-Downloader.exe
├── YT-Bulk-Downloader-v1.3.0-Windows-x64.zip
│
├── YT-Bulk-Downloader.png
├── YT-Bulk-Downloader.ico
├── social-preview.png
│
├── Setup-Dependencies.cmd
├── Update-Dependencies.cmd
├── SHA256SUMS.txt
│
├── README.md
├── LICENSE
├── CHANGELOG.md
├── CONTRIBUTING.md
├── SECURITY.md
│
├── src/
├── docs/
├── tools/
└── .github/
```

---

# Build From Source

The main interface is implemented with **PowerShell WinForms**.

A small Windows launcher opens the PowerShell application without displaying a command window during normal launch.

Build command:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\build.ps1
```

More documentation:

- [Build guide](./docs/BUILD.md)
- [Installation guide](./docs/INSTALL.md)
- [বাংলা installation guide](./docs/INSTALL-BN.md)
- [Troubleshooting](./docs/TROUBLESHOOTING.md)
- [Privacy](./docs/PRIVACY.md)

---

# Privacy

YT Bulk Downloader does not include its own:

- analytics
- advertising tracker
- account system
- cloud database
- telemetry service

URLs are passed to locally installed download tools.

Browser-cookie access is optional and only used when the user explicitly selects a browser-cookie option.

See:

[Privacy documentation](./docs/PRIVACY.md)

---

# Responsible Use

Use this software only for:

- content you own
- content you have permission to download
- content whose download is otherwise allowed by applicable service terms and law

The project does not provide DRM circumvention.

---

# Contributing

Bug reports, feature requests, and focused pull requests are welcome.

Before submitting changes, read:

[CONTRIBUTING.md](./CONTRIBUTING.md)

For bugs:

[Open an Issue](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/issues)

Please include:

- Windows version
- app version
- dependency versions
- relevant error message
- reproducible steps

Do not publish private cookies, passwords, or credentials.

---

# Credits

YT Bulk Downloader builds a desktop workflow around excellent open-source projects:

- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [FFmpeg](https://ffmpeg.org/)
- [Deno](https://deno.com/)
- Windows PowerShell / WinForms

---

# Developer

**Md Imran**

[![GitHub](https://img.shields.io/badge/GitHub-MdImranTm-181717?style=for-the-badge&logo=github)](https://github.com/MdImranTm)
[![Telegram](https://img.shields.io/badge/Telegram-MdImranTm-229ED9?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/MdImranTm)

If YT Bulk Downloader is useful to you, consider:

- starring the repository
- sharing the project
- opening useful bug reports
- suggesting improvements

---

<div align="center">

### YT Bulk Downloader

**Paste links. Choose quality. Start the queue.**

</div>
