#!/bin/bash
echo ¡Hola, Mario!

echo Vamos a reinstalar todos tus programas y repositorios para dejarlo como antes en esta nueva instalación

apt update
apt upgrade

echo ** NextDNS **

sh -c "$(curl -sL https://nextdns.io/install)"

echo ** Docker ** && cd Descargas && curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh

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

echo ** Ungoogled Chromium ** && flatpak install flathub com.github.Eloston.UngoogledChromium && echo ¡Listo!

echo ** Tor Browser** && flatpak install flathub com.github.micahflee.torbrowser-launcher && echo ¡Listo!

echo ** Vocal Podcast ** && flatpak install flathub com.github.needleandthread.vocal && echo ¡Listo!

echo ** Brave ** && apt install apt-transport-https curl && curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && apt update && apt install brave-browser && echo ¡Listo!

echo ** Ulauncher ** && wget https://github.com/Ulauncher/Ulauncher/releases/download/5.11.0/ulauncher_5.11.0_all.deb && echo Recuerda ejecutarlo en Eddy

echo ** qbittorrent ** && flatpak install flathub org.qbittorrent.qBittorrent && echo ¡Listo!