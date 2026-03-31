#!/bin/bash
# =============================================================
# Script 1: System Identity Report
# Author: Divya Bhaskar | Roll: 24BCY10061
# Course: Open Source Software | VITyarthi
# Description: Displays a welcome screen with system info and
#              confirms the OS and Python license details.
# =============================================================

# --- Student & Software Variables ---
STUDENT_NAME="Divya Bhaskar"
ROLL_NUMBER="24BCY10061"   
SOFTWARE_CHOICE="Python"           

# --- Gather System Information using command substitution ---
KERNEL=$(uname -r)                                                            # Linux kernel version
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')  # Distro name
USER_NAME=$(whoami)                                                           # Currently logged-in user
HOME_DIR=$HOME                                                                # Home directory of current user
UPTIME=$(uptime -p)                                                           # Human-readable system uptime
CURRENT_DATE=$(date '+%A, %d %B %Y')                                         # Formatted current date
CURRENT_TIME=$(date '+%H:%M:%S')                                             # Current time

# --- Get Python version if installed ---
if command -v python3 &>/dev/null; then
    PYTHON_VERSION=$(python3 --version 2>&1)   # e.g. Python 3.11.2
else
    PYTHON_VERSION="Python not found"
fi

# --- Display the System Identity Report ---
echo "============================================================"
echo "        OPEN SOURCE AUDIT — SYSTEM IDENTITY REPORT         "
echo "============================================================"
echo ""
echo "  Student    : $STUDENT_NAME ($ROLL_NUMBER)"
echo "  Software   : $SOFTWARE_CHOICE"
echo "------------------------------------------------------------"
echo "  Distro     : $DISTRO"
echo "  Kernel     : $KERNEL"
echo "  User       : $USER_NAME"
echo "  Home Dir   : $HOME_DIR"
echo "  Uptime     : $UPTIME"
echo "  Date       : $CURRENT_DATE"
echo "  Time       : $CURRENT_TIME"
echo "  Python     : $PYTHON_VERSION"
echo "------------------------------------------------------------"

# --- License message for Python and the OS ---
echo "  OS License   : The Linux kernel is licensed under GPL v2."
echo "                 You have the freedom to run, study, modify,"
echo "                 and distribute this software freely."
echo ""
echo "  Python License: Python is released under the PSF License"
echo "                 (Python Software Foundation License)."
echo "                 It is a permissive, BSD-style license that"
echo "                 allows free use, modification, and even"
echo "                 commercial distribution without sharing"
echo "                 source code — unlike GPL."
echo "============================================================"
echo ""