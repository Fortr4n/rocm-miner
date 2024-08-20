#!/bin/bash

# This script assumes you have already updated Ubuntu and 
# installed the ROCM dkms package. If not, please do that first.
# Refer to: https://github.com/RadeonOpenCompute/ROCm

# Create a directory for mining
mkdir -p ~/mining

# Copy the scripts to the mining directory
cp * ~/mining

# Change to the mining directory
cd ~/mining

# Download the latest version of SRBMiner-Multi
wget https://github.com/doktor83/SRBMiner-Multi/releases/latest/download/SRBMiner-Multi-2-6-1-Linux.tar.gz -O SRBMiner-Multi-Linux.tar.gz

# Uncompress SRBMiner
tar xvzf SRBMiner-Multi-Linux.tar.gz

# Optionally, rename the extracted directory for clarity
# For example, rename the directory to 'SRBMiner' or leave it as is
# mv SRBMiner-Multi-2-6-1 SRBMiner

# Move the master script to the SRBMiner directory (if applicable)
mv master-script.sh SRBMiner-Multi-2-6-1/

# Enter the SRBMiner directory
cd SRBMiner-Multi-2-6-1

# Create a symbolic link to ROCm's monitoring and settings utility
# For convenience and organization
ln -s /opt/rocm/bin/rocm-smi rocm-smi

# Optionally, create or edit the configuration file for your mining pool and wallet
# For example, you could create a file called 'config_fishhash.txt' for mining FISHHASH
# nano config_fishhash.txt

# Start SRBMiner with your configuration file
# Example: ./SRBMiner-MULTI --config config_fishhash.txt
