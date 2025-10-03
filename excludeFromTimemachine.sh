#!/bin/bash
# Time Machine Exclude Script
# Save as: setup-timemachine-excludes.sh

echo "Adding Time Machine Excludes..."

# === SYSTEM CACHES ===
tmutil addexclusion -p ~/Library/Caches
tmutil addexclusion -p ~/Library/Logs
tmutil addexclusion -p ~/.cache

# === PACKAGE MANAGERS ===
# Node/JavaScript
tmutil addexclusion -p ~/.npm
tmutil addexclusion -p ~/.nvm
tmutil addexclusion -p ~/.pnpm-store
tmutil addexclusion -p ~/.yarn
tmutil addexclusion -p ~/Library/pnpm

# .NET/C#
tmutil addexclusion -p ~/.dotnet
tmutil addexclusion -p ~/.nuget
tmutil addexclusion -p ~/.local/share/NuGet

# Other
tmutil addexclusion -p ~/.gradle
tmutil addexclusion -p /opt/homebrew/Cellar

# === CONTAINER/VIRTUALIZATION ===
# Docker/Podman
tmutil addexclusion -p ~/.docker
tmutil addexclusion -p ~/.local/share/containers
tmutil addexclusion -p ~/.local/share/libpod
tmutil addexclusion -p ~/.config/containers
tmutil addexclusion -p ~/.config/cni
tmutil addexclusion -p ~/Library/Containers/com.docker.docker

# Virtual Machines
tmutil addexclusion -p ~/Virtual\ Machines
tmutil addexclusion -p ~/Library/Parallels
tmutil addexclusion -p ~/Library/Application\ Support/Parallels
tmutil addexclusion -p ~/.vagrant.d

# === DEVELOPMENT TOOLS ===
# JetBrains IDEs
tmutil addexclusion -p ~/Library/Caches/JetBrains
tmutil addexclusion -p ~/Library/Application\ Support/JetBrains/Rider*/caches
tmutil addexclusion -p ~/.local/share/JetBrains
tmutil addexclusion -p ~/.AzureToolsForIntelliJ

# VS Code
tmutil addexclusion -p ~/Library/Application\ Support/Code/Cache
tmutil addexclusion -p ~/Library/Application\ Support/Code/CachedData

# Xcode
tmutil addexclusion -p ~/Library/Developer/Xcode/DerivedData
tmutil addexclusion -p ~/Library/Developer/Xcode/Archives
tmutil addexclusion -p ~/Library/Developer/CoreSimulator

# Other Dev Tools
tmutil addexclusion -p ~/.local/share/cursor-agent

# === AI/ML MODELS ===
tmutil addexclusion -p ~/.ollama
tmutil addexclusion -p ~/.lmstudio

echo "Excludes configured!"
echo "Check using: sudo mdfind \"com_apple_backup_excludeItem = 'com.apple.backupd'\""