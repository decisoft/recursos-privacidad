#!/bin/bash
echo ¡Hola, Mario!

echo Vamos a reinstalar todos tus programas y repositorios para dejarlo como antes en esta nueva instalación de Fedora

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

dnf -y update
dnf -y install neofetch git curl wget zsh xclip xsel syncthing gnome-tweak-tool
dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
dnf install lame\* --exclude=lame-devel
dnf group upgrade --with-optional Multimedia

echo ** Firefox ** && flatpak install flathub org.mozilla.firefox && echo ¡Listo!

echo ** Telegram ** && flatpak install flathub org.telegram.desktop && echo ¡Listo!

echo ** Signal ** && flatpak install flathub org.signal.Signal && echo ¡Listo!

echo ** OnlyOffice ** && flatpak install flathub org.onlyoffice.desktopeditors && echo ¡Listo!

echo ** Calibre ** && flatpak install flathub com.calibre_ebook.calibre && echo ¡Listo!

echo ** PDF Tricks ** && flatpak install flathub com.github.muriloventuroso.pdftricks && echo ¡Listo!

echo ** VLC ** && flatpak install flathub org.videolan.VLC && echo ¡Listo!

echo ** Typora ** && flatpak install flathub io.typora.Typora && echo ¡Listo!

echo ** Byte ** && flatpak install flathub com.github.alainm23.byte && echo ¡Listo!

echo ** Ungoogled Chromium ** && flatpak install flathub com.github.Eloston.UngoogledChromium && echo ¡Listo!

echo ** Brave ** && dnf install dnf-plugins-core && dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/ && rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc && dnf install brave-browser
