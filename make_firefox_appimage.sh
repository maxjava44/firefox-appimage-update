git clone https://github.com/maxjava44/firefox-appimage-update.git
cd firefox-appimage-update
chmod +x pkg2appimage
./pkg2appimage Firefox.yml
cd out
wget https://github.com/AppImage/AppImageKit/releases/download/12/appimagetool-x86_64.AppImage
chmod +x appimagetool-x86_64.AppImage
chmod +x Firefox*.AppImage
./Firefox*.AppImage --appimage-extract
./appimagetool-x86_64.AppImage squashfs-root -u "gh-releases-zsync|maxjava44|firefox-appimage-update|latest|Firefox-*x86_64.AppImage.zsync"
