<div align="center">

<img src="assets/YT-Bulk-Downloader.png" width="120" alt="YT Bulk Downloader icon">

# YT Bulk Downloader

**A clean Windows GUI for downloading one video or many links with yt-dlp + FFmpeg.**

Paste links line-by-line, choose quality, watch live per-video + overall progress, and keep the entire batch visible in a compact download queue.

[![Release](https://img.shields.io/github/v/release/MdImranTm/YT-Bulk-Downloader?display_name=tag&style=flat-square)](https://github.com/MdImranTm/YT-Bulk-Downloader/releases)
[![Windows](https://img.shields.io/badge/Windows-10%20%7C%2011-0078D4?style=flat-square&logo=windows)](https://github.com/MdImranTm/YT-Bulk-Downloader)
[![License](https://img.shields.io/badge/License-MIT-22c55e?style=flat-square)](LICENSE)
[![Stars](https://img.shields.io/github/stars/MdImranTm/YT-Bulk-Downloader?style=flat-square)](https://github.com/MdImranTm/YT-Bulk-Downloader/stargazers)

</div>

![YT Bulk Downloader social preview](assets/social-preview.png)

## Why this app?

Many yt-dlp workflows are powerful but terminal-heavy. **YT Bulk Downloader** keeps the same reliable backend while giving Windows users a small, focused interface: paste one or many links, select a format, start the queue, and see exactly what is downloading.

## Features

- **One link or bulk links** — paste URLs one per line; duplicate links are ignored.
- **Live batch queue** — every item stays visible as Queued, Downloading, Processing, Completed, Failed, or Stopped.
- **Professional progress tracking** — overall batch percentage plus the current video's percentage, speed, and ETA when available.
- **Video and audio presets** — Best MP4, up to 1080p, up to 720p, and MP3 audio-only.
- **Metadata options** — optional metadata, thumbnail, and English subtitle handling.
- **Browser cookies** — optional Chrome, Edge, or Firefox cookie access for content you are authorized to access.
- **Dependency detection** — checks PATH plus common WinGet/Scoop/Chocolatey locations to reduce false “Missing” results.
- **Install only what is missing** — yt-dlp, FFmpeg/ffprobe, and Deno can be installed from the app or the setup helper.
- **Portable app** — the app itself does not need a traditional installation.
- **No command window on normal launch** — open `YT-Bulk-Downloader.exe` directly.
- **Windows-native app metadata** — custom icon, version information, DPI-aware manifest, and `asInvoker` execution level.

## Quick start

### 1. Download

Open the [Releases](https://github.com/MdImranTm/YT-Bulk-Downloader/releases) page and download:

```text
YT-Bulk-Downloader-v1.3.0-Windows-x64.zip
```

Extract the ZIP, then open:

```text
YT-Bulk-Downloader.exe
```

### 2. Check requirements

The app checks:

- `yt-dlp`
- `ffmpeg`
- `ffprobe`
- `deno`

If something is missing, click **INSTALL MISSING** inside the app, or run:

```text
Setup-Dependencies.cmd
```

### 3. Paste links

Paste one link per line:

```text
https://www.youtube.com/watch?v=VIDEO_ID_1
https://www.youtube.com/watch?v=VIDEO_ID_2
https://youtu.be/VIDEO_ID_3
```

A single link works too.

### 4. Download

Choose the output folder and quality, then click **START DOWNLOAD**.

The bottom queue shows each item independently while the overall progress bar represents the complete batch.

## Supported URL styles

The link parser is designed for common YouTube URL formats, including:

- Standard watch links
- `youtu.be` links
- Shorts
- Playlists
- Channel/video pages that yt-dlp supports
- Mobile and music YouTube domains where supported by yt-dlp

Actual availability depends on yt-dlp, the content, your region/account, and the source site's current behavior.

## Requirements

- Windows 10 or Windows 11, x64
- Windows PowerShell 5.1 or newer
- Internet connection for downloads/dependency installation
- yt-dlp
- FFmpeg + ffprobe
- Deno

Manual install with WinGet:

```powershell
winget install --id yt-dlp.yt-dlp --exact --source winget
winget install --id Gyan.FFmpeg --exact --source winget
winget install --id DenoLand.Deno --exact --source winget
```

Close and reopen the app after first-time dependency installation so Windows can refresh PATH changes.

## Progress model

For a batch of 20 links, the overall bar no longer resets from 0–100% for every video. Instead it combines completed items with the current item's progress.

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
3   Current video                 Downloading    72.4%
4   Next video                    Queued           0.0%
```

## Windows security / SmartScreen

The executable is configured with **`asInvoker`**, so simply opening the app does **not** request administrator elevation. Installing missing dependencies may require Windows/WinGet permission.

Public GitHub downloads can still show **Microsoft Defender SmartScreen / Unknown publisher** for an unsigned executable. That is Windows reputation/code-signing behavior, not an in-app dialog. A trusted code-signing certificate is the proper way for a public distributor to remove the “Unknown publisher” experience over time.

Release SHA-256 hashes are included in `SHA256SUMS.txt` so users can verify downloaded files.

## Build from source

The interface is implemented in PowerShell WinForms. A small Windows launcher embeds the PowerShell payload and opens it without a console window.

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\build.ps1
```

See [docs/BUILD.md](docs/BUILD.md) for details.

## Privacy

YT Bulk Downloader does not include its own analytics, tracking, account system, or cloud database. URLs are passed to locally installed download tools. Browser-cookie access is optional and only used when the user explicitly selects a browser option.

See [docs/PRIVACY.md](docs/PRIVACY.md).

## Troubleshooting

Common fixes are documented in [docs/TROUBLESHOOTING.md](docs/TROUBLESHOOTING.md), including:

- Installed tools incorrectly shown as missing
- PATH refresh after WinGet install
- Invalid/unsupported URL messages
- Age-restricted/account-required videos
- FFmpeg merge errors
- Download failures caused by upstream source changes

## Responsible use

Use this software only for content you own, content you have permission to download, or downloads otherwise permitted by the applicable service terms and law. The project does not bypass DRM.

## Contributing

Bug reports and focused pull requests are welcome. Read [CONTRIBUTING.md](CONTRIBUTING.md) before submitting changes.

## Credits

This project builds a desktop workflow around excellent open-source tools, especially:

- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [FFmpeg](https://ffmpeg.org/)
- [Deno](https://deno.com/)

## Developer

**Md Imran**

- GitHub: [@MdImranTm](https://github.com/MdImranTm)
- Telegram: [@MdImranTm](https://t.me/MdImranTm)

If the project helps you, consider starring the repository so more Windows users can find it.
