#!/bin/bash
cd ~/Downloads
wget https://github.com/chrissimpkins/Hack/releases/download/v2.018/Hack-v2_018-ttf.zip -O hack.zip
unzip hack.zip -d hack
sudo \cp -rf hack /usr/share/fonts/hack

rm -rf hack
rm -f hack.zip
