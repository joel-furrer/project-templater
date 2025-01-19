
SCRIPT_NAME="create_structure.sh"
TARGET_NAME="mkpr"
INSTALL_DIR="$HOME/.local/bin"

if [ ! -f "$SCRIPT_NAME" ]; then
  echo "Script '$SCRIPT_NAME' not found. Make sure it is in the current directory."
  exit 1
fi

if [ ! -d "$INSTALL_DIR" ]; then
  mkdir -p "$INSTALL_DIR"
  echo "Directory '$INSTALL_DIR' created."
fi

cp "$SCRIPT_NAME" "$INSTALL_DIR/$TARGET_NAME"
chmod +x "$INSTALL_DIR/$TARGET_NAME"

echo "The script has been installed as an executable [$TARGET_NAME]."

if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
  echo "WARNING: '$INSTALL_DIR' is not in your PATH. Add the following to your shell configuration:"
  echo "export PATH=\"$INSTALL_DIR:\$PATH\""
else
  echo "You can now run the command '$TARGET_NAME' anywhere."
fi

