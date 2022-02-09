# install_arch
loadkeys fr
pacman -Sy git
git clone https://github.com/theofff/install_arch.git
bash install_arch/disk.sh

bash chroot.sh

bash gnome.sh
