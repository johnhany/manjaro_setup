sudo pacman -S fcitx-im
sudo pacman -S fcitx-configtool

# ~/.xprofile
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
