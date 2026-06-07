#!/bin/bash
echo "Creating a launcher for WINE.."
cp ./wine.desktop ~/.local/share/applications/wine.desktop
sudo chmod +x ~/.local/share/applications/wine.desktop
sudo cp ./wine.desktop /usr/share/applications/wine.desktop
sudo chmod +x /usr/share/applications/wine.desktop

cp ./wine-open.nemo_action ~/.local/share/nemo/actions/wine-open.nemo_action
sudo chmod +x ~/.local/share/nemo/actions/wine-open.nemo_action

echo "Making WINE the default application.."
sudo xdg-mime default ~/.local/share/applications/wine.desktop application/x-ms-dos-executable
sudo xdg-mime default ~/.local/share/applications/wine.desktop application/x-msdownload
sudo xdg-mime default ~/.local/share/applications/wine.desktop application/vnd.microsoft.portable-executable
echo "OK."
read -p "Hit ENTER to refresh and close."
update-desktop-database ~/.local/share/applications/
update-mime-database ~/.local/share/mime/
nemo -q && nemo &
