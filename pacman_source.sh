sudo pacman-mirrors -c China -m rank


# /etc/pacman.conf
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch

sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring
