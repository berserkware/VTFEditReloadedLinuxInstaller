rm -r "$HOME/.local/share/wineprefixes/vtfeditreloaded"

rm "$HOME/.local/share/applications/misyltoad-vtfeditreloaded.desktop"
sudo rm "/usr/bin/vtfeditreloaded"
sudo rm "/usr/bin/vtfcmdreloaded"

sudo rm /usr/share/icons/hicolor/16x16/apps/vtfeditreloaded.png
sudo rm /usr/share/icons/hicolor/32x32/apps/vtfeditreloaded.png
sudo rm /usr/share/icons/hicolor/48x48/apps/vtfeditreloaded.png
sudo rm /usr/share/icons/hicolor/64x64/apps/vtfeditreloaded.png
sudo rm /usr/share/icons/hicolor/128x128/apps/vtfeditreloaded.png
sudo rm /usr/share/icons/hicolor/256x256/apps/vtfeditreloaded.png

command -v gtk-update-icon-cache >/dev/null 2>&1 \
  && [ -f /usr/share/icons/hicolor/index.theme ] \
  && sudo gtk-update-icon-cache -f -t /usr/share/icons/hicolor >/dev/null
