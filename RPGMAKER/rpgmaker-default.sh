echo "Installing RPG Maker Launcher v1.1.8"
wget https://github.com/bakustarver/rpgmakermlinux-cicpoffs/releases/download/v1.1.8/rpgmakerlinux-x86_64-v1.1.8.tar.gz 
tar -xf rpgmakerlinux-x86_64-v1.1.8.tar.gz
cd rpgmakerlinux-x86_64-v1.1.8
sudo chmod +x ./install.sh
source ./install.sh
cd ../
sudo rm -rf rpgmakerlinux-x86_64-v1.1.8.tar.gz
sudo rm -rf rpgmakerlinux-x86_64-v1.1.8
read -p "OK. If there are no errors, hit enter to continue. Otherwise close this window."

echo "Creating launcher.."
sudo cp ./mz_icon.png /usr/share/pixmaps/rpgmaker_mz.png

cp rpg_maker_mvmz.desktop ~/.local/share/applications/rpg_maker_mvmz.desktop
sudo chmod +x ~/.local/share/applications/rpg_maker_mvmz.desktop

cp ./open-rpgmaker.nemo_action ~/.local/share/nemo/actions/open-rpgmaker.nemo_action

read -p "OK. Press ENTER to close."
