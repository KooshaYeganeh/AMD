# AMD - Android Malware Detector

## Overview

The AMD (Android Malware Detector) script is a comprehensive tool for scanning Android devices for malware and other suspicious activities. It provides features for basic and comprehensive scans, malware detection, script execution, APK analysis, and more.

This script is designed to work with Android devices connected via ADB (Android Debug Bridge) and integrates various tools for effective malware detection.

## Features

- **Header Printing**: Displays a header with information about the script.
- **ADB Management**: Starts the ADB server and checks for connected devices.
- **Storage Mounting and Checking**: Handles storage mounting and verifies accessibility.
- **Directory Checking**: Validates expected directories on the Android device.
- **Hash Checking**: Verifies the integrity of specified files using SHA-256 hashes.
- **Script Execution**: Executes Python scripts located in the `SCRIPTS_DIR`.
- **Basic Scan**: Checks files, packages, and network ports on the Android device.
- **Comprehensive Scan**: Analyzes APK files, logs, and runs antivirus scans.
- **Malware Detection**: Scans installed packages for known malware signatures.
- **Report Generation**: Creates detailed reports of scan results.
- **APK Analysis**: Runs an additional analysis of APK files using a Python script.

## Installation

1. **Clone the Repository**:
   ```
   git clone <repository_url>
   cd <repository_directory>
   ```

2. **Ensure Required Tools**:
   Make sure you have `adb`, `python3`, `androguard`, `clamscan`, and `maldet` installed on your system.

3. **Make the Script Executable**:
   ```
   chmod +x amd
   ```

## Usage

```
./amd [OPTION] [ARGUMENTS]
```

### Options

- `--help`:
  Show the help message and exit.

- `--scan`:
  Perform a full scan with optional flags:
  - `--basic`: Perform a basic scan.
  - `--comprehensive`: Perform a comprehensive scan.

- `--scripts`:
  Show the number of scripts and list their names in the `SCRIPTS_DIR`.
  - `--exec`: Execute Python scripts in the `SCRIPTS_DIR`.

- `--apk`:
  Scan APK files with Androguard.

- `--check-hash`:
  Check the hash of a specified file. Requires two additional arguments:
  - `file_path`: The path to the file.
  - `known_hash`: The known SHA-256 hash to compare against.

- `--am`:
  Run the `analyze_apks.py` Python script for APK analysis.

## Directory Structure

- `BASE_DIR`: `/home/$USER/AMD`
  - `App`: Directory where app data is stored.
  - `Scans`: Directory where scan results are saved.
  - `Logs`: Directory where log files are stored.
  - `Scripts`: Directory containing Python scripts for execution.
  - `databases`: Contains `malwares.txt` with known malware package names.

## Example

To perform a comprehensive scan and generate a report:

```
./amd --scan --comprehensive
```

To check the hash of a file:

```
./amd --check-hash /path/to/file known_sha256_hash
```

To execute Python scripts in the `SCRIPTS_DIR`:

```
./amd --scripts --exec
```

## Troubleshooting

- **No Device Detected**:
  Ensure your Android device is properly connected and ADB debugging is enabled.

- **Storage Not Mounted**:
  Verify that your storage is correctly mounted and accessible.

- **Script Errors**:
  Check that all required tools and dependencies are installed and properly configured.

## License

This script is distributed under the GNU GENERAL PUBLIC LICENSE . See `LICENSE` for more details.

## Contact

For any questions or issues, please contact koosha yeganeh at kooshakooshadv@gmail.com.

### website

kooshayeganeh.github.io

---

*This README.md provides an overview and usage instructions for the AMD script. Ensure all dependencies are installed and configured before running the script.*
```

### Key Points:
- **Overview**: Briefly describes what the script does.
- **Features**: Lists the functionalities provided by the script.
- **Installation**: Instructions to get the script up and running.
- **Usage**: Detailed usage instructions for the available options.
- **Directory Structure**: Explains the purpose of different directories used by the script.
- **Example**: Provides example commands for common use cases.
- **Troubleshooting**: Offers solutions for common issues.
- **License and Contact**: Information on licensing and how to get in touch.

Feel free to adjust the content to better fit your specific needs or preferences.