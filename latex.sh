sudo pacman -S texlive-most texlive-langchinese texlive-latexextra texlive-fontsextra

sudo pacman -S texstudio

# /usr/share/texmf-dist/tex/latex/fontawesome/fontawesome.sty
\newfontfamily{\FA}{FontAwesome}
# to
\newfontfamily{\FA}{FontAwesome.otf}

# /etc/profile
export FONTCONFIG_FILE=/etc/fonts/fonts.conf

sudo pacman -S wqy-microhei wqy-bitmapfont wqy-zenhei wqy-microhei-lite
sudo pacman -S adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts
sudo pacman -S ttf-dejavu
sudo pacman -S noto-fonts noto-fonts-extra noto-fonts-emoji noto-fonts-cjk

yay -S ttf-adobe-song
yay -S ttf-adobe-heiti
yay -S ttf-adobe-kaiti
sudo pacman -S ttf-lato

fc-cache -vf
sudo texhash

# in tex file
\usepackage[UTF8, adobefonts]{ctex}
