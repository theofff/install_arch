#!/bin/bash
source /install_arch/credentials.env
#read -p "Choisissez un nom d'utilisateur : " name
#read -p "Choisissez un mot de passe : " -s mdp
#useradd -m $name
#passwd $name <<EOF
#$mdp
#$mdp
#EOF

useradd -m $USER
passwd $USER <<EOF
$PASSWORD
$PASSWORD
EOF

#gpasswd -a $name wheel

gpasswd -a $USER wheel

systemctl enable dhcpcd
#pacman -S gnome gnome-extra <<EOF
#
#
#
#
#
#
#EOF
touch /etc/X11/xorg.conf.d/00-keyboard.conf
echo 'Section "InputClass"' >> /etc/X11/xorg.conf.d/00-keyboard.conf
echo '       Identifier             "keyboard Layout"' >> /etc/X11/xorg.conf.d/00-keyboard.conf
echo '       MatchIsKeyboard        "on"' >> /etc/X11/xorg.conf.d/00-keyboard.conf
echo '       Option "XkbLayout"     "fr"' >> /etc/X11/xorg.conf.d/00-keyboard.conf
echo '       Option "XkbOptions"    "grp:shifts_toggle"' >> /etc/X11/xorg.conf.d/00-keyboard.conf
echo 'EndSection' >> /etc/X11/xorg.conf.d/00-keyboard.conf
pacman -S sudo <<EOF

EOF
sed -ire 's/#.*\(%wheel.*NOPASSWD.*\)/\1/' /etc/sudoers
#sed -ire 's/#.*\(%wheel.*\)/\1/' /etc/sudoers
#systemctl enable gdm
#pacman -S code<<EOF
#
#EOF
pacman -S devtools<<EOF

EOF
sudo systemctl enable --now sshd
reboot
