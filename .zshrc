# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

ZSH_THEME="robbyrussell"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export N64_INST="$HOME/Apps/libdragon/"
export SNI_DEBUG="0"
export SNI_USB2SNES_DISABLE="0"
export RUST_BACKTRACE="full"
export TERMINAL="kitty"
export PATH=$PATH:$HOME/.dotnet/tools/

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias zshrc="micro ~/.zshrc"
alias kittyconfig="micro ~/.config/kitty/kitty.conf"

alias desktopfolder="cd ~/.local/share/applications"
alias dotfiles="cd ~/dotfiles"

alias superbmd="wine /home/mulfok/Apps/SuperBMD-1.3.11-PlayerModels/SuperBMD.exe"
alias wwmodelpack="WINEDEBUG=-all wine /home/mulfok/Apps/WW_Model_Helpers_2.4.1_64bit/pack_models.exe"
alias wwmodelunpack="WINEDEBUG=-all wine /home/mulfok/Apps/WW_Model_Helpers_2.4.1_64bit/unpack_models.exe"

alias nvim="
	kitten @ set-background-opacity 1 &&
	command nvim "$@" &&
	kitten @ set-background-opacity 0.8
"

# hyprland configs
alias refreshenv="zsh;exit"
alias hyprlogout="hyprctl dispatch 'hl.dsp.exit()'"

EDITOR=micro

# appearance
fastfetch

source <(fzf --zsh)
