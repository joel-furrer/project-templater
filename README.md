# Project Templater

`Project Templater` is a lightweight and efficient tool to initialize consistent project structures in your development workflow. The tool simplifies the process of setting up a new project directory with pre-defined folders and files, ensuring standardization and saving time.

## Features

- Automatically creates a new project folder with the following structure:
  ```
  ├── docs
  ├── logs
  ├── scripts
  ├── src
  ├── tests
  ├── .env
  ├── README.md
  ```
- Sets appropriate permissions for files and directories.
- Provides an executable command `mkpr` for convenient usage from any terminal location.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/project-templater.git
   cd project-templater/src
   ```

2. Run the installation script:
   ```bash
   ./install.sh
   ```

3. Ensure that `$HOME/.local/bin` is in your `PATH`. Add this line to your shell configuration file if needed:
   ```bash
   export PATH="$HOME/.local/bin:$PATH"
   ```
   Reload your shell configuration:
   ```bash
   source ~/.bashrc  # or `~/.zshrc` for Zsh
   ```

## Usage

To create a new project, use the following command:
```bash
mkpr
```

You will be prompted to enter a name for your project. The tool will then create a new directory with the specified name and populate it with the standard structure.

Example:
```bash
$ mkpr
Please enter your project's name:
MyNewProject
Folder [ MyNewProject ] created successfully.
Project structure created successfully.
```

## Folder Structure

After running `mkpr`, your project will look like this:
```
MyNewProject
├── docs
├── logs
├── scripts
├── src
├── tests
├── .env
└── README.md
```

## Contributing

We welcome contributions to improve and extend `Project Templater`! To contribute:
1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Description of changes"
   ```
4. Push to your fork:
   ```bash
   git push origin feature-name
   ```
5. Open a pull request on the original repository.



