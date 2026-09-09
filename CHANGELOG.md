# Changelog

All notable changes to YT Bulk Downloader are documented here.

## [1.3.0] - 2026-09-09

### Added
- Professional `YT-Bulk-Downloader.exe` Windows launcher with no normal console window.
- Custom application icon and Windows file metadata.
- `asInvoker` manifest so normal launch does not request administrator elevation.
- Overall batch progress that grows across the full queue.
- Persistent per-item download queue with Queued, Downloading, Processing, Completed, Failed, and Stopped states.
- Speed and ETA display when yt-dlp provides the values.
- GitHub-ready project structure, build workflow, issue templates, release package, and SHA-256 checksums.

### Fixed
- YouTube links incorrectly reported as invalid after successful paste.
- False missing-dependency results when tools are installed outside the current PATH session.
- Windows Script Host `Line 1 / Char 1 / Invalid character` encoding failure from the older VBS launcher.
- Batch progress resetting for each video and then appearing to finish all items at once.

### Changed
- Product name shortened from “Windows YT Bulk Downloader” to **YT Bulk Downloader**.
- UI remains compact and stacked instead of using a large side-by-side layout.
