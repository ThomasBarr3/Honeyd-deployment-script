#!/bin/bash

# Step 1: Install dependencies
echo "Installing dependencies..."
sudo apt-get update
sudo apt-get install libevent-dev libdumbnet-dev libpcap-dev libpcre3- dev libedit-dev bison flex libtool automake

# Step 2: Install Git
echo "Installing Git..." sudo apt-get install -y git

# Step 3: Clone Honeyd
echo "Cloning Honeyd from GitHub..."
git clone https://github.com/Unbiseptium/Honeyd

# Step 4: Build Honeyd
echo "Building and installing Honeyd..." cd Honeyd || exit
./autogen.sh
./configure
make
sudo make install
