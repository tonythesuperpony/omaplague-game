#!/usr/bin/env bash
# Omaplague Install Script
# Downloads the game binary from GitHub Releases and registers it as a system app

set -e

INSTALL_DIR="$HOME/.local/share/omaplague"
BIN_DIR="$HOME/.local/bin"
ICON_DIR="$HOME/.local/share/icons/hicolor/256x256/apps"
DESKTOP_DIR="$HOME/.local/share/applications"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RELEASE_URL="https://github.com/tonythesuperpony/omaplague-game/releases/latest/download/omaplague.x86_64"

echo "=== Omaplague Installer ==="
echo ""

mkdir -p "$INSTALL_DIR" "$BIN_DIR" "$ICON_DIR" "$DESKTOP_DIR"

# Use local binary if present next to script, otherwise download
if [ -f "$SCRIPT_DIR/omaplague.x86_64" ]; then
  echo "Found local binary, copying..."
  cp "$SCRIPT_DIR/omaplague.x86_64" "$INSTALL_DIR/omaplague.x86_64"
else
  echo "Downloading binary from GitHub Releases..."
  if command -v curl &>/dev/null; then
    curl -L "$RELEASE_URL" -o "$INSTALL_DIR/omaplague.x86_64" --progress-bar
  elif command -v wget &>/dev/null; then
    wget "$RELEASE_URL" -O "$INSTALL_DIR/omaplague.x86_64"
  else
    echo "ERROR: curl or wget required to download the binary."
    exit 1
  fi
fi

chmod +x "$INSTALL_DIR/omaplague.x86_64"

# Copy icon
cp "$SCRIPT_DIR/icon.png" "$ICON_DIR/omaplague.png"

# Create launcher wrapper in ~/.local/bin
cat > "$BIN_DIR/omaplague" << 'EOF'
#!/usr/bin/env bash
exec "$HOME/.local/share/omaplague/omaplague.x86_64" "$@"
EOF
chmod +x "$BIN_DIR/omaplague"

# Create .desktop entry
cat > "$DESKTOP_DIR/omaplague.desktop" << EOF
[Desktop Entry]
Name=Omaplague
GenericName=Strategy Game
Comment=Infect. Evolve. Dominate. A global pandemic strategy game by Tony the Pony.
Exec=$INSTALL_DIR/omaplague.x86_64
Icon=omaplague
Terminal=false
Type=Application
Categories=Game;StrategyGame;
Keywords=plague;pandemic;strategy;infection;
StartupWNotify=true
EOF

# Update icon cache
update-desktop-database "$DESKTOP_DIR" 2>/dev/null || true
gtk-update-icon-cache -f -t "$HOME/.local/share/icons/hicolor" 2>/dev/null || true

echo ""
echo "✅ Omaplague installed!"
echo "   Binary : $INSTALL_DIR/omaplague.x86_64"
echo "   Launcher: $DESKTOP_DIR/omaplague.desktop"
echo "   Command : omaplague"
echo ""
echo "It should now appear in your app launcher."
