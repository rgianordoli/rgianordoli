#!/bin/bash
set -e

echo "🔧 Updating package list and installing prerequisites..."
sudo apt update
sudo apt install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

echo "🔑 Adding Docker GPG key..."
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
  sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "📦 Adding Docker repository..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "🔄 Updating package list (with Docker)..."
sudo apt update

echo "🐳 Installing Docker Engine and plugins..."
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "▶️ Testing Docker installation..."
sudo docker run hello-world

echo "👤 Adding current user to 'docker' group..."
sudo usermod -aG docker "$USER"
echo "⚠️ Please log out and back in or run 'newgrp docker' to apply group changes."

echo "✅ Docker installation complete."
