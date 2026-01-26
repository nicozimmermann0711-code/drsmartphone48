#!/bin/bash
# ═══════════════════════════════════════════════════════════════
# 🌙 LUNARA Website - Push to GitHub
# ═══════════════════════════════════════════════════════════════

echo "🌙 LUNARA Website Push Script"
echo ""

# Option 1: GitHub CLI (Einfachste Methode)
if command -v gh &> /dev/null; then
    echo "✅ GitHub CLI gefunden!"
    echo "Führe aus: gh auth login && git push -u origin main"
    gh auth login && git push -u origin main --force
    exit 0
fi

# Option 2: Mit Personal Access Token
echo "📋 PUSH ANLEITUNG:"
echo ""
echo "1. Gehe zu: https://github.com/settings/tokens"
echo "2. 'Generate new token (classic)'"
echo "3. Aktiviere Scope 'repo'"
echo "4. Token kopieren"
echo ""
echo "5. Dann ausführen:"
echo ""
echo "   git remote set-url origin https://DEIN_TOKEN@github.com/nicozimmermann0711-code/LUNARA.git"
echo "   git push -u origin main --force"
echo ""
echo "═══════════════════════════════════════════════════════════════"
echo "Nach dem Push: Repository → Settings → Pages → Source: main"
echo "═══════════════════════════════════════════════════════════════"
