#!/bin/bash

# Make the Directory if it doesn't exist
mkdir -p lineage

# Change to the Source Directory
cd lineage

# Init Repo
repo init --depth=1 -u https://github.com/LineageOS/android.git -b lineage-19.1

# Sync the Sources
repo sync -j$(nproc --all) --force-sync --no-tags --no-clone-bundle

# Clone Trees
git clone --single-branch --depth=1 https://github.com/punkzappa007/android_device_tecno_cg8.git device/tecno/TECNO-CG8 || { echo "ERROR: Failed to Clone the Device Trees!" && exit 1; }
#git clone --single-branch --depth=1 $DCT_LINK $DCT_PATH
#git clone --single-branch --depth=1 $VT_LINK $VT_PATH
#git clone --single-branch --depth=1 $VCT_LINK $VCT_PATH
#git clone --single-branch --depth=1 $KT_LINK $KT_PATH

# Exit
exit 0
