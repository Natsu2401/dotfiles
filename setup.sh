sudo pacman -S --needed base-devel git rofi ncmpcpp mpd bspwm sxhkd ranger picom neovim dunst zsh xfce4-terminal ruby nodejs npm python-pip xdotool

# fonts
npm i sauce-code-pro
# configs neovim
pip install neovim
sudo pip install pynvim
sudo npm install -g neovim
gem install neovim 

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
      

#install yay
mkdir /tmp/yay
cd /tmp/yay
curl -OJ 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
makepkg -si
cd
rm -rf /tmp/yay

#yay install
yay -S cava
