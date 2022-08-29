sudo pacman -S --needed base-devel git rofi ncmpcpp mpd bspwm sxhkd ranger picom neovim dunst zsh xfce4-terminal ruby nodejs npm python-pip xdotool polybar

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

#setup terminal
echo "neofetch --ascii_distro arch_small" >> ${ZDOTDIR:-$HOME}/.bashrc
echo "zsh" >> ${ZDOTDIR:-$HOME}/.bashrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

#theme terminal
git clone https://github.com/dracula/xfce4-terminal.git
mkdir -p ~/.local/share/xfce4/terminal/colorscheme
cp -r ~/xfce4-terminal/Dracula.theme ~/.local/share/xfce4/terminal/colorscheme
rm -rf xfce4-terminal

#config
cp -rf ~/dotfiles/.config/ ~/
