#!/bin/bash

set -e

TMP_DIR=$(mktemp -d)
trap 'rm -rf "$TMP_DIR"' EXIT

ZIP_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/NerdFontsSymbolsOnly.zip"
FONT_DIR="/usr/share/fonts/NerdFontsSymbolsOnly"
CONF_DIR="/etc/fonts/conf.d"

sudo mkdir -p "$FONT_DIR"
wget -q --show-progress "$ZIP_URL" -O "$TMP_DIR/NerdFontsSymbolsOnly.zip"
sudo unzip -o "$TMP_DIR/NerdFontsSymbolsOnly.zip" -d "$FONT_DIR"

# Move the fontconfig file to conf.d with proper naming if not exists or overwrite
sudo mv "$FONT_DIR/10-nerd-font-symbols.conf" "$CONF_DIR/10-nerd-font-symbols.conf"

sudo fc-cache -fv
