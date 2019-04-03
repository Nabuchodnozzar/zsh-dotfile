#Deant's zshrc config file

# Standard Conf.
	export ZSH=/home/deant/.oh-my-zsh
	ZSH_THEME="ys"
	DISABLE_AUTO_UPDATE="true"
	export UPDATE_ZSH_DAYS=12
#	DISABLE_AUTO_TITLE="true"
#	ENABLE_CORRECTION="true"
	COMPLETION_WAITING_DOTS="true"

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
	HIST_STAMPS="dd.mm.yyyy"
	plugins=(git)

# Turn off WWAN & Bluetooth at terminal log (yes, I like it)
rfkill block $(rfkill list | grep WAN | cut -c 1) && rfkill block $(rfkill list | grep bluetooth | cut -c 1)

# User configuration
	export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin"
	source $ZSH/oh-my-zsh.sh
	export EDITOR='vim'

# Personal aliases
	alias ls="ls -l  --color=auto"
	alias grep="grep --color=auto"
		export GREP_COLOR=31
	alias shutdown="sudo shutdown -h now"
	alias reboot="sudo reboot"
	alias standby="systemctl suspend"
	alias pi="seq -f '4/%g' 1 2 99999 | paste -sd-+ | bc -l"  # This one is just for fun ;-)
	alias clock="tty-clock -csSD"
	alias interfaces="ifconfig | grep flags | cut -d ' ' -f 1 | rev | cut -c 2- | rev"
	alias sshNeji="ssh d3ant@37.187.107.10"
	alias noBT="rfkill block $(rfkill list | grep bluetooth | cut -c 1)"
	alias no3G="rfkill block $(rfkill list | grep WAN | cut -c 1)"
	alias debloat="sudo pacman -Rns $(pacman -Qtdq)" # adapt this one to your usual package manager 
	alias waku="yaourt -Suya" # adapt this one to your usual package manager

# Use fzf !
	[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
