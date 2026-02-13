#!/bin/bash

sudo apt update

# أدوات أساسية
sudo apt install -y \
  git \
  curl \
  wget \
  net-tools \
  nmap \
  nano \
  vim \
  python3 \
  python3-pip \
  nodejs \
  npm

# مثال Web Lab بسيط
mkdir -p ~/web-lab
cat <<EOF > ~/web-lab/index.html
<h1>Welcome to Buad CTF Lab</h1>
<p>Try to find the hidden flag 👀</p>
EOF

echo "Lab Ready 🚀"
