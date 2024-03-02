# DICOM to JPEG Converter

This repository contains a script to convert DICOM (Digital Imaging and Communications in Medicine) images to JPEG format. It utilizes the `dcmj2pnm` tool to perform the conversion. The script is designed to run on Unix-like systems such as Linux and macOS.

## Requirements

- Unix-like operating system (Linux, macOS)
- `dcmj2pnm` tool installed (part of the DCMTK package)
- Bash shell environment

## Installation

### Installing DCMTK

1. **Ubuntu/Debian:**

    ```bash
    sudo apt update
    sudo apt install dcmtk
    ```

2. **macOS (Homebrew):**

    If you have Homebrew installed:

    ```bash
    brew install dcmtk
    ```

### Cloning and Running the Converter Script

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/traczewskim/dicom-to-jpeg-converter.git
    ```

2. Navigate to the repository directory:

    ```bash
    cd dicom-to-jpeg-converter
    ```

3. Run the conversion script:

    ```bash
    ./dcom-converter.sh /path/to/input/dicom/images
    ```

    Replace `/path/to/input/dicom/images` with the directory containing your DICOM images. Converted images will be saved in `./jpg` directory.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributions

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## Acknowledgements

This script relies on the [DCMTK](https://dcmtk.org/) toolkit for DICOM image manipulation.

## Disclaimer

This script is provided as-is, without any warranties or guarantees. Use at your own risk.
