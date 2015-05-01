cd ~/Downloads
wget https://pcaro.es/d/otf-hermit-1.21.tar.gz
mkdir hermit
tar xvf otf-hermit-1.21.tar.gz -C hermit
scp hermit/Hermit* ~/Library/Fonts
rm -rf hermit
rm otf-hermit-1.21.tar.gz

