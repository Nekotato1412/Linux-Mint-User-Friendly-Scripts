echo "Creating launcher.."
sudo cp ./mz_icon.png /usr/share/pixmaps/rpgmaker_mz.png

cp rpg_maker_mvmz.desktop ~/.local/share/applications/rpg_maker_mvmz.desktop
sudo chmod +x ~/.local/share/applications/rpg_maker_mvmz.desktop

cp ./open-rpgmaker.nemo_action ~/.local/share/nemo/actions/open-rpgmaker.nemo_action


echo "OK. Hit ENTER to close."
read
