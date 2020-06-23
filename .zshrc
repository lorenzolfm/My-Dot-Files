# Path to your oh-my-zsh installation.
export ZSH="/home/lorenzo/.oh-my-zsh"

# Got the theme and some other cool configs from this great article by @thewizardlucas
# https://lucasfcosta.com/2019/02/10/terminal-guide-2019.html
ZSH_THEME="spaceship"

# Disables window auto title rename
DISABLE_AUTO_TITLE=true


plugins=(
	z
	tmux
	safe-paste
	colored-man-pages
	colorize
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Loas aliases
if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

# Use nvim as default editor
export EDITOR=~/./nvim.appimage
export VISUAL=~/./nvim.appimage
