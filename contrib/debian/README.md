
Debian
====================
This directory contains files used to package xebecd/xebec-qt
for Debian-based Linux systems. If you compile xebecd/xebec-qt yourself, there are some useful files here.

## xebec: URI support ##


xebec-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install xebec-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your xebec-qt binary to `/usr/bin`
and the `../../share/pixmaps/xebec128.png` to `/usr/share/pixmaps`

xebec-qt.protocol (KDE)

