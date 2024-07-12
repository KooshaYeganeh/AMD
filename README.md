# Android Malware Detection Script (KYGNUS AMD)

This script is designed to perform a comprehensive malware scan on an Android device using various tools and methods. It supports scanning with ClamAV, YARA, Androguard, and more. It also provides functionality for checking system integrity, permissions, and monitoring network activity.

## Features

- **ADB Integration**: Pulls files from an Android device, checks device connectivity, and monitors network activity.
- **Malware Scanning**: Uses ClamAV, YARA rules, and Androguard to scan for malware.
- **System Checks**: Verifies storage, directories, permissions, and more.
- **Image Scanning**: Analyzes boot images using `abootimg`.
- **Script Management**: Lists and executes scripts from a specified directory.
- **File Analysis**: Checks file types and searches for sensitive strings in files.

## Prerequisites

- **ADB**: Android Debug Bridge should be installed and accessible.
- **YARA**: YARA tool should be installed.
- **Androguard**: Python-based tool for analyzing Android applications.
- **ClamAV**: Antivirus tool for scanning files.
- **abootimg**: Tool for inspecting boot images.

## Installation

1. .deb

```
sudo dpkg -i amd_1.0.deb
```


2. .rpm

```
sudp rpm -ivh amd_1.0.0.rpm

```

3. Ensure all required tools are installed.

## Usage

### Basic Commands

- **Start Scanning**: 
  ```bash
  amd --scan
  ```
  This will perform a full scan on the connected Android device.

- **Scan with ClamAV**:
  ```bash
  amd --scan --clamav
  ```
  Performs a malware scan using ClamAV.

- **Scan with YARA**:
  ```bash
  amd --scan --yara <YARA_RULES_DIR>
  ```
  Performs a malware scan using YARA rules located in `<YARA_RULES_DIR>`.

- **List and Execute Scripts**:
  ```bash
  amd --scan --scripts
  ```
  Lists and executes scripts from the `SCRIPTS_DIR` directory.

- **Scan Boot Image**:
  ```bash
  amd --scan --bootimage
  ```
  Scans boot images using `abootimg`.

### System Checks

- **Check Storage**:
  ```bash
  amd --check --storage
  ```

- **Check Directories**:
  ```bash
  amd --check --directories
  ```

- **Check Permissions**:
  ```bash
  amd --check --permissions
  ```

- **File Type Check**:
  ```bash
  amd --check --filetype
  ```

- **Strings Check**:
  ```bash
  amd --check --strings
  ```

### Bootloader

- **Unlock Bootloader**:
  ```bash
  amd --flash
  ```

### Help

- **Show Help**:
  ```bash
  amd --help
  ```

## Script Directory Structure

- **Base Directory**: `/home/$USER/AMD`
- **App Directory**: `$BASE_DIR/App`
- **Scans Directory**: `$BASE_DIR/Scans`
- **Logs Directory**: `$BASE_DIR/Logs`
- **Scripts Directory**: `$BASE_DIR/Scripts`
- **YARA Rules Directory**: `$BASE_DIR/yara_rules`
- **Malware Databases**: `$BASE_DIR/databases/malwares_hash.txt`, `$BASE_DIR/databases/malwares_packages.txt`
- **Temporary Files**: Stored in `/tmp/adb_analysis_logs` and `/tmp/adb_analysis_text`.

## Contribution

If you want to contribute to this project, please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author

- [Koosha Yeganeh]
- [website](http://kooshayeganeh.github.io)

