# apk-bundle

A lightweight bash utility for Alpine Linux to install groups of packages from a text file.

## Features

- **Comment Support**: Easily document your package list with `#` comments.
- **Clean Input**: Automatically ignores comments and blank lines.
- **Robust Error Handling**: Verifies file existence and root privileges.
- **Simple Usage**: Install your entire stack with one command.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/sicbite/apk-bundle.git
   cd apk-bundle
   ```
2. Run the installer (requires root):
   ```bash
   doas ./install.sh
   ```

## Usage

Create a file (e.g., `pkgs.txt`):
```text
# System utilities
curl
wget

# Editor
neovim
```

Run `apk-bundle`:
```bash
doas apk-bundle pkgs.txt
```

### Help
For usage information, use the help flag:
```bash
doas apk-bundle -h
# or
doas apk-bundle --help
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
