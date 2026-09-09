<div align="center">

<img src="./YT-Bulk-Downloader.png" width="112" alt="YT Bulk Downloader app icon">

# YT Bulk Downloader

### Simple, portable bulk video downloader for Windows

Paste one YouTube link or hundreds of links, choose a quality preset, and track every download from a clean Windows GUI powered by **yt-dlp + FFmpeg**.

<br>

[![Download ZIP](https://img.shields.io/badge/Download-Windows%20x64-2F81F7?style=for-the-badge&logo=windows11&logoColor=white)](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/raw/refs/heads/main/YT-Bulk-Downloader-v1.3.0-Windows-x64.zip)
[![Download EXE](https://img.shields.io/badge/Portable-EXE-22C55E?style=for-the-badge&logo=windows&logoColor=white)](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/raw/refs/heads/main/YT-Bulk-Downloader.exe)

[![Windows](https://img.shields.io/badge/Windows-10%20%7C%2011-0078D4?style=flat-square&logo=windows)](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader)
[![License](https://img.shields.io/badge/License-MIT-22C55E?style=flat-square)](./LICENSE)
[![Stars](https://img.shields.io/github/stars/MdImranTm/YouTube-Bulk-Video-Downloader?style=flat-square)](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/stargazers)
[![Issues](https://img.shields.io/github/issues/MdImranTm/YouTube-Bulk-Video-Downloader?style=flat-square)](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/issues)

</div>

![YT Bulk Downloader preview](./social-preview.png)

---

## Overview

**YT Bulk Downloader** is a lightweight Windows desktop app for downloading a single video or a large list of videos without working in a terminal.

Add links one per line, select your preferred output format, choose a download folder, and start the queue. The app keeps the complete batch visible while showing both **overall progress** and the **current video's live progress**.

> The application itself is portable. Required download tools can be detected and installed separately when needed.

## Highlights

- **Single or bulk downloads** — paste one URL or many URLs, one per line.
- **Live download queue** — Queued, Downloading, Processing, Completed, Failed, and Stopped states.
- **Overall + per-video progress** — batch percentage, current percentage, speed, and ETA when available.
- **Quality presets** — Best MP4, up to 1080p, up to 720p, and MP3 audio-only.
- **Duplicate filtering** — repeated links are ignored automatically.
- **Metadata options** — optional metadata, thumbnail, and English subtitle handling.
- **Browser cookie support** — optional Chrome, Edge, or Firefox cookies for content you are authorized to access.
- **Dependency detection** — checks common PATH, WinGet, Scoop, and Chocolatey locations.
- **Install only what is missing** — yt-dlp, FFmpeg/ffprobe, and Deno.
- **Portable Windows app** — no traditional installer for the app itself.
- **No terminal window during normal use** — launch `YT-Bulk-Downloader.exe`.
- **Windows-native executable metadata** — app icon, version metadata, DPI awareness, and `asInvoker` manifest.

---

## Download

### Recommended: ZIP package

[**Download YT-Bulk-Downloader-v1.3.0-Windows-x64.zip**](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/raw/refs/heads/main/YT-Bulk-Downloader-v1.3.0-Windows-x64.zip)

1. Download the ZIP.
2. Extract it to any folder.
3. Open `YT-Bulk-Downloader.exe`.
4. Check the requirements section inside the app.
5. Install missing dependencies if required.
6. Paste links and start downloading.

### Portable EXE

[**Download YT-Bulk-Downloader.exe**](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/raw/refs/heads/main/YT-Bulk-Downloader.exe)

The EXE is portable, but `yt-dlp`, `FFmpeg/ffprobe`, and `Deno` are still required for the full download workflow.

---

## Requirements

| Component | Purpose |
|---|---|
| Windows 10/11 x64 | Operating system |
| PowerShell 5.1+ | App/backend integration |
| yt-dlp | Video extraction and download |
| FFmpeg + ffprobe | Merge, conversion, audio/video processing |
| Deno | JavaScript runtime used by current yt-dlp YouTube workflows |
| Internet connection | Downloads and dependency installation |

### Automatic setup

If a required tool is missing, use **INSTALL MISSING** inside the app.

You can also run:

```bat
Setup-Dependencies.cmd
```

### Manual setup with WinGet

```powershell
winget install --id yt-dlp.yt-dlp --exact --source winget
winget install --id Gyan.FFmpeg --exact --source winget
winget install --id DenoLand.Deno --exact --source winget
```

After first-time installation, close and reopen the app so Windows can refresh PATH changes.

---

## How to use

### 1. Paste links

Paste one link per line:

```text
https://www.youtube.com/watch?v=VIDEO_ID_1
https://www.youtube.com/watch?v=VIDEO_ID_2
https://youtu.be/VIDEO_ID_3
```

A single link works too.

### 2. Choose settings

Select:

- Download folder
- Best MP4 / 1080p / 720p / MP3
- Optional metadata
- Optional thumbnail
- Optional subtitles
- Optional browser cookies

### 3. Start the queue

Click **START DOWNLOAD**.

The bottom area tracks the complete batch instead of resetting the overall bar for every video.

Example:

```text
Overall: 38%
Current: 8 of 20
Current video: 72.4%
Speed: 5.4 MiB/s
ETA: 00:14
```

Queue:

```text
#   VIDEO / LINK               STATUS        PROGRESS
1   First video                Completed     100.0%
2   Second video               Completed     100.0%
3   Current video              Downloading    72.4%
4   Next video                 Queued           0.0%
```

If one item fails, it can be marked **Failed** while the remaining queue continues.

---

## Supported links

The parser is designed for common URL styles supported by yt-dlp, including:

- Standard YouTube watch URLs
- `youtu.be` short URLs
- YouTube Shorts
- Playlists
- Channel/video pages supported by yt-dlp
- Mobile and Music YouTube URLs where supported upstream

Availability can vary by video, account requirements, region, and upstream YouTube/yt-dlp changes.

---

## Project structure

```text
YouTube-Bulk-Video-Downloader/
├─ YT-Bulk-Downloader.exe
├─ YT-Bulk-Downloader-v1.3.0-Windows-x64.zip
├─ YT-Bulk-Downloader.png
├─ YT-Bulk-Downloader.ico
├─ social-preview.png
├─ Setup-Dependencies.cmd
├─ Update-Dependencies.cmd
├─ README.md
├─ LICENSE
├─ CHANGELOG.md
├─ SECURITY.md
├─ CONTRIBUTING.md
├─ SHA256SUMS.txt
├─ src/
├─ docs/
├─ tools/
└─ .github/
```

---

## Windows SmartScreen

The executable uses an **`asInvoker`** manifest, so normal app launch does not intentionally request administrator elevation.

Because the public executable is currently unsigned, Microsoft Defender SmartScreen may still display an **Unknown publisher** warning on some PCs. That warning is controlled by Windows reputation/code-signing systems.

Installing dependencies through WinGet may separately require Windows permission.

---

## Verify your download

SHA-256 checksums are included in:

```text
SHA256SUMS.txt
```

Example PowerShell verification:

```powershell
Get-FileHash .\YT-Bulk-Downloader.exe -Algorithm SHA256
```

Compare the result with the hash published in `SHA256SUMS.txt`.

---

## Build from source

The interface is implemented with PowerShell WinForms and wrapped in a small Windows launcher.

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\build.ps1
```

More information:

- [Build guide](./docs/BUILD.md)
- [Installation guide](./docs/INSTALL.md)
- [বাংলা installation guide](./docs/INSTALL-BN.md)
- [Troubleshooting](./docs/TROUBLESHOOTING.md)
- [Privacy](./docs/PRIVACY.md)

---

## Privacy

YT Bulk Downloader has no built-in analytics, advertising tracker, account system, or cloud database.

URLs are passed to locally installed download tools. Browser-cookie access is optional and is used only when the user explicitly selects a browser option.

---

## Troubleshooting

If something does not work:

1. Click **CHECK / TRY AGAIN** in the app.
2. Confirm `yt-dlp`, `ffmpeg`, `ffprobe`, and `deno` are detected.
3. Update dependencies using `Update-Dependencies.cmd`.
4. Restart the app after PATH changes.
5. Check [docs/TROUBLESHOOTING.md](./docs/TROUBLESHOOTING.md).

For reproducible bugs, open a [GitHub Issue](https://github.com/MdImranTm/YouTube-Bulk-Video-Downloader/issues) and include the error message/log without sharing private cookies or credentials.

---

## Responsible use

Use this project only for content you own, content you have permission to download, or downloads otherwise permitted by applicable service terms and law.

This project does not provide DRM circumvention.

---

## Contributing

Bug reports, feature requests, and focused pull requests are welcome.

Read [CONTRIBUTING.md](./CONTRIBUTING.md) before submitting changes.

---

## Built with

- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [FFmpeg](https://ffmpeg.org/)
- [Deno](https://deno.com/)
- Windows PowerShell / WinForms

---

## Developer

**Md Imran**

[![GitHub](https://img.shields.io/badge/GitHub-MdImranTm-181717?style=flat-square&logo=github)](https://github.com/MdImranTm)
[![Telegram](https://img.shields.io/badge/Telegram-MdImranTm-229ED9?style=flat-square&logo=telegram&logoColor=white)](https://t.me/MdImranTm)

If this project is useful, consider **starring the repository** and sharing it with other Windows users.

---

<div align="center">

**YT Bulk Downloader — simple bulk downloading with a visible Windows queue.**

</div>
