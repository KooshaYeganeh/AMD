```markdown
# KYGNUS AMD - Android Malware Detection Tool

## Overview

KYGNUS AMD (Android Malware Detection) is a comprehensive tool designed to scan Android devices for malware and other suspicious activities. It integrates multiple scanning engines and techniques to ensure thorough analysis and detection. This tool is part of the LoA Project (Linux on Android).

## Features

- **ClamAV Integration**: Scans files with ClamAV.
- **Abnormal File Detection**: Identifies and removes suspicious executable files.
- **Hash Checking**: Compares file hashes against known malware hashes.
- **YARA Rules**: Scans files using YARA rules.
- **System Updates**: Updates the system and malware databases.
- **File Signature Checks**: Verifies file signatures to detect malware.
- **APK Analysis**: Scans APK files using Androguard.
- **Comprehensive Reporting**: Provides detailed scan results.

## Installation

1. **Get From website for rpm Based Linux's**:
   ```
   cd /tmp && wget https://kooshayeganeh.github.io/Files/amd-1.0.0.noarch.rpm && sudo rpm -ivh amd-1.0.0.noarch.rpm && cd
   ```

2. **Ensure Required Tools**:
   Make sure you have `adb`, `python3`, `androguard`, `clamscan`, and `maldet` installed on your system.

3. **Make the Script Executable**:
   ```sh
   chmod +x amd
   ```

## Usage

```sh
./amd [OPTION] [ARGUMENTS]
```

### Options

- `--help`: Show the help message and exit.
- `--scan`: Perform a full scan.
- `--clamav`: Scan with ClamAV.
- `--amd`: Perform AMD-specific scans.
- `--yara`: Perform a scan with YARA rules only.
- `--update`: Update the system and malware databases.
- `--apk`: Scan APK files with Androguard.
- `--scripts`: Show the number of scripts in the `SCRIPTS_DIR` and list their names.

## Directory Structure

- **BASE_DIR**: `/home/$USER/AMD`
  - **App**: Directory where app data is stored.
  - **Scans**: Directory where scan results are saved.
  - **Logs**: Directory where log files are stored.
  - **Scripts**: Directory containing Python scripts for execution. Users should add their Python scripts here.
  - **databases**: Contains `malwares.txt` with known malware package names and other relevant databases.

## Adding Custom Scripts and Malware Hashes

- **Python Scripts**: Add your Python scripts to `/home/$USER/AMD/Scripts`.
- **Malware Hashes**: Add known malware hashes to `/home/$USER/AMD/databases/malwares.txt`.

## Example

To perform a comprehensive scan and generate a report:

```sh
./amd --scan
```

To execute Python scripts in the `SCRIPTS_DIR`:

```sh
./amd --scripts
```

## Troubleshooting

- **No Device Detected**: Ensure your Android device is properly connected and ADB debugging is enabled.
- **Storage Not Mounted**: Verify that your storage is correctly mounted and accessible.
- **Script Errors**: Check that all required tools and dependencies are installed and properly configured.

## License

This script is distributed under the GNU GENERAL PUBLIC LICENSE. See `LICENSE` for more details.

## Contact

For any questions or issues, please contact Koosha Yeganeh at kooshakooshadv@gmail.com.

### Website

[kooshayeganeh.github.io](https://kooshayeganeh.github.io)

