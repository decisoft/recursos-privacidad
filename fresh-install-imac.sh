#!/bin/bash
echo ¡Hola, Jesús!

echo Vamos a reinstalar todos tus programas y repositorios para dejarlo como antes en esta nueva instalación


apt install -y software-properties-common
add-apt-repository -y ppa:philip.scott/pantheon-tweaks
apt install -y pantheon-tweaks git build-essential vim curl wget zsh xclip xsel neofetch python3-pip
flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

apt update
apt upgrade

echo ** Firefox ** && flatpak install flathub org.mozilla.firefox && echo ¡Listo!

echo ** Telegram ** && flatpak install flathub org.telegram.desktop && echo ¡Listo!

echo ** Signal ** && flatpak install flathub org.signal.Signal && echo ¡Listo!

echo ** OnlyOffice ** && flatpak install flathub org.onlyoffice.desktopeditors && echo ¡Listo!

echo ** LibreOffice ** && flatpak install flathub org.libreoffice.LibreOffice

echo ** KDENLIVE ** && flatpak install flathub org.kde.kdenlive && echo ¡Listo!

echo ** PDF Tricks ** && flatpak install flathub com.github.muriloventuroso.pdftricks && echo ¡Listo!

echo ** VLC ** && flatpak install flathub org.videolan.VLC && echo ¡Listo!

echo ** Ulauncher ** && wget https://github.com/Ulauncher/Ulauncher/releases/download/5.11.0/ulauncher_5.11.0_all.deb && echo Recuerda ejecutarlo en Eddy
