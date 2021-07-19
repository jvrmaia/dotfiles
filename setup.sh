#!/bin/bash

# base
sudo apt update
sudo apt dist-upgrade -y
sudo apt install -y vim tmux build-essential xclip gnome-tweak terminator python3-pip python3-dev flex bison hugo curl gimp
sudo apt install ubuntu-restricted-extras -y

# spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# calibre
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

# joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/master/Joplin_install_and_update.sh | bash

# audio
sudo apt install audacity audacity-data pulseaudio pulseaudio-equalizer pulseaudio-module-bluetooth pulseaudio-module-gsettings pulseaudio-utils pulseeffects pulsemixer pulseaudio-module-jack
sudo apt install libgstreamer1.0-dev gstreamer1.0-tools gstreamer1.0-pulseaudio gstreamer1.0-alsa

# video
sudo apt install vlc ffmpeg

# obs
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio

# python
sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
	libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
	xz-utils tk-dev libffi-dev liblzma-dev python-openssl git libedit-dev

# packer
git clone https://github.com/iamhsa/pkenv.git ${HOME}/.pkenv

# terraform
git clone https://github.com/tfutils/tfenv.git ~/.tfenv

# dart
git clone https://github.com/cbracken/dvm.git .dvm

# flutter
dart pub global activate fvm
