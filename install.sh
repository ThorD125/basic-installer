curl -O https://blackarch.org/strap.sh
echo 5ea40d49ecd14c2e024deecf90605426db97ea0c strap.sh | sha1sum -c
chmod +x strap.sh
./strap.sh
pacman -Syu --noconfirm

pacman -S --noconfirm blackarch


pacman -S --noconfirm debtap

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o chrome.deb

yes | debtap chrome.deb

gsettings set org.gnome.shell app-picker-layout "[]"

gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
