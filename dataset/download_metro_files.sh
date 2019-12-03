#!/bin/bash
function gdrive_download() {
  CONFIRM=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate "https://docs.google.com/uc?export=download&id=$1" -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')
  wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$CONFIRM&id=$1" -O $2
  rm -rf /tmp/cookies.txt
}
cd dataset
mkdir data
gdrive_download 12Ii9kUJQDyJGHyg16dOps1Xwj6edFXlE data/metro_files.zip
cd data
unzip metro_files.zip
rm metro_files.zip
cd ..
cd ..
