# this is not a tool yet, need to copy-paste

sudo apt install gnome-tweak-tool;

sudo apt install materia-gtk-theme
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme paper-gtk-theme

cd ~;
mkdir tmp;
cd tmp;
git clone git@github.com:micheleg/dash-to-dock.git;
cd dash-to-dock;
make;
make install;
echo "<alt>-F2 r <enter> to reload";
echo "tweak/entensions/dash...";