cd ~/Downloads
wget https://github.com/madmalik/mononoki/blob/master/export/mononoki.zip?raw=true
mkdir mononoki
unzip mononoki.zip -d mononoki
scp mononoki/* ~/Library/Fonts
rm -rf mononoki
rm mononoki.zip

