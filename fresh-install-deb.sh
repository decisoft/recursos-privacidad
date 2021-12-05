#!/bin/bash
echo ¡Hola, Mario!

echo Vamos a reinstalar todos tus programas y repositorios para dejarlo como antes en esta nueva instalación


apt install -y software-properties-common
add-apt-repository -y ppa:philip.scott/pantheon-tweaks
apt install -y pantheon-tweaks
apt install git build-essential vim curl wget zsh xclip xsel neofetch python3-pip
flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

apt update
apt upgrade

echo ** Mullvad VPN ** && wget https://mullvad.net/download/app/deb/latest/ && echo Recuerda que tienes que instalar este paquete a través de Eddy.sh

echo ** Firefox ** && flatpak install flathub org.mozilla.firefox && echo ¡Listo!

echo ** Glimpse ** && flatpak install flathub org.glimpse_editor.Glimpse && echo ¡Listo!

echo ** Telegram ** && flatpak install flathub org.telegram.desktop && echo ¡Listo!

echo ** Signal ** && flatpak install flathub org.signal.Signal && echo ¡Listo!

echo ** Sublime Text ** && flatpak install flathub com.sublimetext.three && echo ¡Listo!

echo ** OnlyOffice ** && flatpak install flathub org.onlyoffice.desktopeditors && echo ¡Listo!

echo ** Calibre ** && flatpak install flathub com.calibre_ebook.calibre && echo ¡Listo!

echo ** Discord ** && flatpak install flathub com.discordapp.Discord && echo ¡Listo!

echo ** KDENLIVE ** && flatpak install flathub org.kde.kdenlive && echo ¡Listo!

echo ** PDF Tricks ** && flatpak install flathub com.github.muriloventuroso.pdftricks && echo ¡Listo!

echo ** Planner ** && flatpak install flathub com.github.alainm23.planner && echo ¡Listo!

echo ** VLC ** && flatpak install flathub org.videolan.VLC && echo ¡Listo!

echo ** Typora ** && flatpak install flathub io.typora.Typora && echo ¡Listo!

echo ** HandBrake ** && flatpak install flathub fr.handbrake.ghb && echo ¡Listo!

echo ** Byte ** && flatpak install flathub com.github.alainm23.byte && echo ¡Listo!

echo ** Ungoogled Chromium ** && flatpak install flathub com.github.Eloston.UngoogledChromium && echo ¡Listo!

echo ** Brave ** && apt install apt-transport-https curl && curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"| tee /etc/apt/sources.list.d/brave-browser-release.list && apt update && apt install brave-browser && echo ¡Listo!

echo ** Ulauncher ** && wget https://github.com/Ulauncher/Ulauncher/releases/download/5.11.0/ulauncher_5.11.0_all.deb && echo Recuerda ejecutarlo en Eddy

echo ** qbittorrent ** && flatpak install flathub org.qbittorrent.qBittorrent && echo ¡Listo!

echo ** Syncthing ** && wget https://github.com/syncthing/syncthing/releases/download/v1.18.3/syncthing-linux-amd64-v1.18.3.tar.gz
