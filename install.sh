export WINEPREFIX="$HOME/.local/share/wineprefixes/vtfeditreloaded"
export WINEDEBUG=-all

if [ ! -d "$WINEPREFIX" ]; then
    mkdir -p "$WINEPREFIX"
    wineboot --init
fi

if [ ! -d "VTFEditReloaded" ]; then
    curl -L https://github.com/Sky-rym/VTFEdit-Reloaded/releases/download/2.1.10/VTFEdit_Reloaded_v2.1.10.zip > VTFEditReloaded.zip
    mkdir VTFEditReloaded
    unzip VTFEditReloaded.zip -d VTFEditReloaded
fi

cp -r VTFEditReloaded "$WINEPREFIX/drive_c/Program Files/VTFEdit Reloaded"

cp misyltoad-vtfeditreloaded.desktop "$HOME/.local/share/applications"
sudo cp vtfeditreloaded.sh "/usr/bin/vtfeditreloaded"

sudo cp icons/16x16.png /usr/share/icons/hicolor/16x16/apps/vtfeditreloaded.png
sudo cp icons/32x32.png /usr/share/icons/hicolor/32x32/apps/vtfeditreloaded.png
sudo cp icons/48x48.png /usr/share/icons/hicolor/48x48/apps/vtfeditreloaded.png
sudo cp icons/64x64.png /usr/share/icons/hicolor/64x64/apps/vtfeditreloaded.png
sudo cp icons/128x128.png /usr/share/icons/hicolor/128x128/apps/vtfeditreloaded.png
sudo cp icons/256x256.png /usr/share/icons/hicolor/256x256/apps/vtfeditreloaded.png

command -v gtk-update-icon-cache >/dev/null 2>&1 \
  && [ -f /usr/share/icons/hicolor/index.theme ] \
  && sudo gtk-update-icon-cache -f -t /usr/share/icons/hicolor >/dev/null
