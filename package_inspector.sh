
#!/bin/bash
# =============================================================
# Script 2: FOSS Package Inspector
# Author: Divya Bhaskar | Roll: 24BCY10061
# Course: Open Source Software | VITyarthi
# Description: Checks if Python is installed, displays version
#              and license info, and prints a philosophy note
#              about the package using a case statement.
# =============================================================

# --- Define the package to inspect ---
PACKAGE="python3"   # Our chosen software for this audit

echo "============================================================"
echo "         FOSS PACKAGE INSPECTOR — $PACKAGE                 "
echo "============================================================"
echo ""

# --- Check if the package is installed using if-then-else ---
# (Modified for Git Bash: dpkg and rpm are not available)

if command -v python3 &>/dev/null; then
    echo "  [✔] $PACKAGE is INSTALLED on this system."
else
    echo "  [✘] $PACKAGE is NOT installed."
    echo "  Install Python from python.org if required."
    exit 1
fi

echo ""
echo "  --- Installed Version ---"
if command -v python &>/dev/null; then
   if command -v python &>/dev/null; then
    python --version
else
    echo "Python version could not be detected."
fi    
else
    python3 --version 2>/dev/null || echo "Version info not available"
fi

echo ""
echo "  --- Python Executable Location ---"
which python3

echo ""
echo "  --- Open Source Philosophy Note ---"

# --- Case statement: philosophy note based on package name ---
case $PACKAGE in
    python3 | python)
        echo "  Python: Guido van Rossum started Python in 1989 as a"
        echo "  hobby project over Christmas. He believed programming"
        echo "  should be accessible and readable for everyone — and"
        echo "  the PSF license ensures it stays free forever."
        ;;
    git)
        echo "  Git: Born in 2005 when Linus could no longer use"
        echo "  BitKeeper. Built in 10 days — open source at its best."
        ;;
    httpd | apache2)
        echo "  Apache: The open web server that powers ~30% of sites."
        ;;
    vlc)
        echo "  VLC: Built by French students — plays anything, freely."
        ;;
    firefox)
        echo "  Firefox: A nonprofit browser defending the open web."
        ;;
    *)
        echo "  $PACKAGE: An open-source tool that the world depends on."
        ;;
esac

echo ""
echo "============================================================"