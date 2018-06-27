#!/bin/bash





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



# TODO: add package installation 


tmux_make(){
cat ./tmux > ~/.tmux.conf
}



install(){
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



