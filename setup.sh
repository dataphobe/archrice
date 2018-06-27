#!/bin/bash
VIMRC_FILE=~/.vimrc
NVIMRC_FILE=~/.config/nvim/init.vim
install_plugmgr(){
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

pip3 install neovim
pip3 install --user powerline-status
}




nvim_make(){
 if [ ! -f "$NVIMRC_FILE" ];
 then
    echo "$0: File '${NVIMRC_FILE}' not found. Should I make it ?"
    echo "y/N"
    read -n 1 answer
    if [ "$answer" == "y" ];then
     mkdir -p ~/.config/nvim/ 
     touch $NVIMRC_FILE #~/.config/nvim/init.vim
     echo "$NVIMRC_FILE created"
    fi
 else 
     echo "'${NVIMRC_FILE}' already exists" 
     rm $NVIMRC_FILE
 fi

 cat vim/vimrc >> $NVIMRC_FILE #~/.config/nvim/init.vim 
 find ./ -name '*.vim' -exec cat '{}' >> $NVIMRC_FILE \; #~/.config/nvim/init.vim \;
 find ./ -name '*.nvim' -exec cat '{}' >> $NVIMRC_FILE \; #"${NVIMRC_FILE}" #~/.config/nvim/init.vim \;
 if ! [ -x "$(command -v pip3)" ] || ! [ -x "$(command -v curl)" ]; then
   echo 'make sure pip3 and curl are installed' >&2
   exit 1
 fi
 install_plugmgr
 # git submodule update
 # git submodule foreach git pull origin master
 # sh fonts/install.sh
}

i3_dot(){
    
   [ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
   [ -d $HOME"/.config/gtk-3.0" ] || mkdir -p $HOME"/.config/gtk-3.0"
   [ -d $HOME"/.config/conky" ] || mkdir -p $HOME"/.config/conky"
   [ -d $HOME"/.config/variety" ] || mkdir -p $HOME"/.config/variety"
   [ -d $HOME"/.config/variety/scripts" ] || mkdir -p $HOME"/.config/variety/scripts"
   [ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
   [ -d $HOME"/Desktop" ] || mkdir -p $HOME"/Desktop"
   [ -d $HOME"/Documents" ] || mkdir -p $HOME"/Documents"
   [ -d $HOME"/Downloads" ] || mkdir -p $HOME"/Downloads"
   [ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA"
   #[ -d $HOME"/Dropbox" ] || mkdir -p $HOME"/Dropbox" will be created by dropbox
   [ -d $HOME"/Insync" ] || mkdir -p $HOME"/Insync"
   [ -d $HOME"/Music" ] || mkdir -p $HOME"/Music"
   [ -d $HOME"/Pictures" ] || mkdir -p $HOME"/Pictures"
   [ -d $HOME"/Videos" ] || mkdir -p $HOME"/Videos"
   [ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"
   [ -d $HOME"/.gimp-2.8" ] || mkdir -p $HOME"/.gimp-2.8"
   [ -d $HOME"/.gimp-2.8/scripts" ] || mkdir -p $HOME"/.gimp-2.8/scripts"
   [ -d $HOME"/.gimp-2.8/themes" ] || mkdir -p $HOME"/.gimp-2.8/themes"
    cp i3/* ~/.config/i3/
    cp -r ./polybar ~/.config/
    cp -r ./termite ~/.config/
    cp -r ./ranger ~/.config/
    cp -r ./dunst ~/.config/
    cp -r ./mpd  ~/.config/
    cp -r ./ncmpcpp ~/.config/
    mkdir -p ~/.urxvt
    cp -r ./urxvt/ext ~/.urxvt/
    cp ./i3/conkyrc ~/.conkyrc
    # cp YosemiteSanFranciscoFont/*.ttf ~/.fonts/

    cp gtk/.gtkrc-2.0 ~/
    cp gtk/.xinitrc ~/
    cp gtk/bookmarks ~/.config/gtk-3.0/
    cp gtk/settings.ini ~/.config/gtk-3.0/

    cp gtk/gimp/scripts/* ~/.gimp-2.8/scripts/
    cp -r gtk/gimp/themes/* ~/.gimp-2.8/themes/
    cp ./Xresources ~/.Xresources
    # cp ./Font-Awesome/use-on-desktop/* ~/.fonts/
    # sh fonts/install.sh
    # cp -r ~/.local/share/fonts/* ~/.fonts/

}
bash_dot(){
   # echo '# chip chip chip chip chip ' >> ~/.bashtmp
   if [ $USER = "" ]; then
       cp bash/t.bash ~/.bashtmp
       cp bash/archey.bash ~/.archey
   elif [ $USER = "" ]; then
       cp bash/td.bash ~/.bashtmp

   elif [ $USER = "" ]; then
       cp bash/tw.bash ~/.bashtmp
   else
       echo "Hello, $name."
   fi
   cp bash/bash.bashrc ~/.bashrc
   cp bash/shared.bash ~/.bash_profile
   # cat shared.bash >> ~/.bash_profile
   # cp art.bash ~/.welcome
   source ~/.bashrc
}




bash_make(){
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
bash_dot
if [ $machine = Linux ]; then
    # ubuntu_make
    echo "linux"
elif [ $machine = Mac ]; then
    # osxbash_make
    echo "Mac"
else
    echo "operating system not found"
fi
}
# TODO: add package installation 


tmux_make(){
cat ./tmux > ~/.tmux.conf
}



make(){
bash_dot
nvim_make
tmux_make
i3_dot
}

# Check if the function exists (declare is bash specific)
# declare -f lists all exising functions with the specified name so the output should be directed to /dev/null
if declare -f "$1" > /dev/null
then

# call arguments verbatim
  "$@"


else
  # Show a helpful error
  echo "'$1' is not a known function name" >&2
  exit 1
fi



