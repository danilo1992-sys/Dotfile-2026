#!/bin/bash

blue='\e[0;34m'
red='\e[0;31m'
cyan='\e[0;36m'
green='\e[0;32m'
reset='\e[0m'

fedora_ascii() {
  local ascii_art="
            'ccccc:.             
         ,'ccccccccccccccc:.        
      .';cccccccccccccccccccc:.     
   .'ccccccccccccco@@@@bccccccc; 
  .:cccccccccccccd@@cccq@@:cccccc, 
 .:ccccccccccccc@@@ccccc@@Pccccccc;
,:cccccccccccccc@@@ccccccccccccccc:
ccccccccco@@@@@c@@@@@@@ccccccccccc:
cccccccd@@cccccc@@@ccccccccccccccc:
cccccc@@occccccc@@@ccccccccccccccc'
ccccccq@@bcccccd@@Pccccccccccccc;  
ccccccccq@@@@@@@Pccccccccccccc:,   
'cccccccccccccccccccccccccc:.      
 ;ccccccccccccccccccccc:,.
  "
  echo -e "${blue}$ascii_art${reset}"
}

fish(){
  sudo dnf update -y && 
  sudo dnf upgrade -y &&
  sudo dnf install fish &&
  chsh -s $(which fish)
}

brew(){
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&
  test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)" &&
  test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" &&
  echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.config/fish/config.fish
  sudo dnf group install development-tools &&
  sudo dnf install procps-ng curl file
}

install(){
  brew install bat zoxide zellij nvim starship lazygit lazydocker posting fnm &&
  fnm install 24 
}

github(){
  folder = "$HOME/.config/"
  if [[ -d $folder ]]; then 
    echo "La carpeta ya esxiste"
  else flatpak install flathub com.spotify.Client
    echo "La carpeta no existe "
    mkdir -p "$folder"

  git clone https://github.com/danilo1992-sys/Dotfile-2026.git &&
  rm -rf $HOME/.config/fish &&
  cd Dotfile-2026 &&
  sudo ln -s $HOME/Dotfile-2026/fish/ $HOME/.config/ &&
  sudo ln -s $HOME/Dotfile-2026/zellij/ $HOME/.config/ &&
  sudo ln -s $HOME/Dotfile-2026/lazygit/ $HOME/.config/ &&
  sudo ln -s $HOME/Dotfile-2026/lazydocker/ $HOME/.config/ &&
  sudo ln -s $HOME/Dotfile-2026/nvim/ $HOME/.config/ &&
  sudo ln -s $HOME/Dotfile-2026/starship.toml/ $HOME/.config/ &&
  sudo ln -s $HOME/Dotfile-2026/posting/ $HOME/.config/&&
  source $HOME/.config/fish/config.fish &&
}

gnome(){
  cd ./GNOME-Extensions-Backup-Script/ &&
  chmod +x gnome-extensions-config.sh &&
  ./gnome-extensions-config.sh import && 
  flatpak install flathub com.mattjakeman.ExtensionManager &&
  flatpak install flathub com.spotify.Client
}

brave(){
sudo dnf install dnf-plugins-core &&
sudo dnf config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo &&
sudo dnf install brave-browser
}

fedora_ascii
fish
brew
install
github 
gnome
brave 
