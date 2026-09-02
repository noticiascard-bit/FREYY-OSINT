#!/data/data/com.termux/files/usr/bin/bash

set -e

REPO_RAW="https://raw.githubusercontent.com/noticiascard-bit/FREYY-OSINT/main/dork.sh"
TARGET="$PREFIX/bin/freyy"

echo
echo "======================================"
echo "          FREYY OSINT INSTALLER"
echo "======================================"
echo

if [ -z "$PREFIX" ]; then
    echo "❌ Este instalador foi feito para Termux."
    exit 1
fi

if ! command -v curl >/dev/null 2>&1; then
    echo "📦 Instalando curl..."
    pkg install -y curl
fi

if ! command -v python >/dev/null 2>&1; then
    echo "📦 Instalando Python..."
    pkg install -y python
fi

if ! command -v termux-open-url >/dev/null 2>&1; then
    echo "❌ termux-open-url não foi encontrado."
    exit 1
fi

echo "⬇️ Baixando FREYY..."

curl -fL "$REPO_RAW" -o "$TARGET"

chmod +x "$TARGET"

echo
echo "✅ FREYY instalado com sucesso!"
echo
echo "Execute:"
echo
echo "    freyy"
echo
