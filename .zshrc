#export GPG_TTY=$(tty)
#export GPG_AGENT_INFO=${HOME}/.gnupg/S.gpg-agent:0:1

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes


#ZSH_THEME="powerlevel10k/powerlevel10k"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	terraform
	kube-ps1
	kubectx
	colorize
	gem
	gh
	git-prompt
	gnu-utils
	history
	helm
	kops
	kubectl
	kind
	aws
	zsh-autosuggestions
        zsh-syntax-highlighting
	z
        )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:/home/sharoot/bin:$HOME/.cargo/bin:/home/sharoot/.local/bin 

alias git="git -P"
export EDITOR=$(which vi)

# SHA : kubectl auto
#
source <(kubectl completion zsh)


#######################
#
#
#  SHA : 27th Jan 2023 09:08 AM IST

#Global

alias tdir="cd /home/sharoot/DOP_AWS/dop-terraform;pwd"
alias tdirpr="cd /home/sharoot/DOP_AWS/dop-terraform/Products;pwd"
alias tdirsec="cd /home/sharoot/DOP_AWS/dop-terraform/Security;pwd"
alias tdirtool="cd /home/sharoot/DOP_AWS/dop-terraform/Tooling;pwd"

alias myip="curl http://ipecho.net/plain; echo"

sdir() {
	
	REG=$(echo $1 | tr '[a-z]' '[A-Z]')
	SERV=$2
	
	cd $HOME/DOP_AWS/dop-terraform/Products/${REG}/service/${SERV}
	echo;pwd;echo
}

slist() {
	
	REG=$(echo $1 | tr '[a-z]' '[A-Z]')
	
	clear
	cd $HOME/DOP_AWS/dop-terraform/Products/${REG}/service/
	echo;pwd;echo
	ls -lrt $HOME/DOP_AWS/dop-terraform/Products/${REG}/service/
	cd -
	echo
}

ndir() {

	REG=$(echo $1 | tr '[a-z]' '[A-Z]')
	SERV=$2

	cd $HOME/DOP_AWS/dop-terraform/Products/${REG}/network/${SERV}
	echo;pwd;echo
}


nlist() {

	REG=$(echo $1 | tr '[a-z]' '[A-Z]')

	clear
	cd $HOME/DOP_AWS/dop-terraform/Products/${REG}/network/
	echo;pwd;echo
	ls -lrt $HOME/DOP_AWS/dop-terraform/Products/${REG}/network/
	cd -
	echo
}


alias glo="git -P log --oneline --parents"

alias pr-reload="source $HOME/.zshrc"




alias ctrln="ssh ansible@localhost -p 2221"

 alias labs="ssh  -o StrictHostKeyChecking=no -q  -i shalabs-key-001.pem root@shalabs.docker.io"
 alias dlabs='ssh  -o StrictHostKeyChecking=no -q  -i shalabs-key-001.pem ubuntu@shalabs.docker.io'






 ########################
 #
 #SOCKET
 
 if [ -z "$SSH_AUTH_SOCK" ]; then
   # Check for a currently running instance of the agent
   RUNNING_AGENT="`ps -ax | grep 'ssh-agent -s' | grep -v grep | wc -l | tr -d '[:space:]'`"
   if [ "$RUNNING_AGENT" = "0" ]; then
        # Launch a new instance of the agent
        ssh-agent -s &> $HOME/.ssh/ssh-agent
   fi
   eval `cat $HOME/.ssh/ssh-agent`
   ssh-add ~/.ssh/id_rsa
fi

#####


#Setup Starship prompt
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
eval "$(starship init zsh)"


alias kctx="kubectx"
alias kns="kubens"


# Setup Fuzzy Finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath=(/home/sharoot/.oh-my-zsh/custom/completions /home/sharoot/.oh-my-zsh/plugins/z /home/sharoot/.oh-my-zsh/custom/plugins/fast-syntax-highlighting /home/sharoot/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting /home/sharoot/.oh-my-zsh/custom/plugins/zsh-autosuggestions /home/sharoot/.oh-my-zsh/plugins/aws /home/sharoot/.oh-my-zsh/plugins/kind /home/sharoot/.oh-my-zsh/plugins/kubectl /home/sharoot/.oh-my-zsh/plugins/kops /home/sharoot/.oh-my-zsh/plugins/helm /home/sharoot/.oh-my-zsh/plugins/history /home/sharoot/.oh-my-zsh/plugins/gnu-utils /home/sharoot/.oh-my-zsh/plugins/git-prompt /home/sharoot/.oh-my-zsh/plugins/gh /home/sharoot/.oh-my-zsh/plugins/gem /home/sharoot/.oh-my-zsh/plugins/colorize /home/sharoot/.oh-my-zsh/plugins/kubectx /home/sharoot/.oh-my-zsh/plugins/kube-ps1 /home/sharoot/.oh-my-zsh/plugins/terraform /home/sharoot/.oh-my-zsh/plugins/git /home/sharoot/.oh-my-zsh/functions /home/sharoot/.oh-my-zsh/completions /home/sharoot/.oh-my-zsh/custom/functions /home/sharoot/.oh-my-zsh/custom/completions /home/sharoot/.oh-my-zsh/plugins/z /home/sharoot/.oh-my-zsh/custom/plugins/fast-syntax-highlighting /home/sharoot/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting /home/sharoot/.oh-my-zsh/custom/plugins/zsh-autosuggestions /home/sharoot/.oh-my-zsh/plugins/aws /home/sharoot/.oh-my-zsh/plugins/kind /home/sharoot/.oh-my-zsh/plugins/kubectl /home/sharoot/.oh-my-zsh/plugins/kops /home/sharoot/.oh-my-zsh/plugins/helm /home/sharoot/.oh-my-zsh/plugins/history /home/sharoot/.oh-my-zsh/plugins/gnu-utils /home/sharoot/.oh-my-zsh/plugins/git-prompt /home/sharoot/.oh-my-zsh/plugins/gh /home/sharoot/.oh-my-zsh/plugins/gem /home/sharoot/.oh-my-zsh/plugins/colorize /home/sharoot/.oh-my-zsh/plugins/kube-ps1 /home/sharoot/.oh-my-zsh/plugins/terraform /home/sharoot/.oh-my-zsh/plugins/git /home/sharoot/.oh-my-zsh/functions /home/sharoot/.oh-my-zsh/completions /home/sharoot/.oh-my-zsh/custom/functions /home/sharoot/.oh-my-zsh/custom/completions /home/sharoot/.oh-my-zsh/cache/completions /usr/local/share/zsh/site-functions /usr/share/zsh/vendor-functions /usr/share/zsh/vendor-completions /usr/share/zsh/functions/Calendar /usr/share/zsh/functions/Chpwd /usr/share/zsh/functions/Completion /usr/share/zsh/functions/Completion/AIX /usr/share/zsh/functions/Completion/BSD /usr/share/zsh/functions/Completion/Base /usr/share/zsh/functions/Completion/Cygwin /usr/share/zsh/functions/Completion/Darwin /usr/share/zsh/functions/Completion/Debian /usr/share/zsh/functions/Completion/Linux /usr/share/zsh/functions/Completion/Mandriva /usr/share/zsh/functions/Completion/Redhat /usr/share/zsh/functions/Completion/Solaris /usr/share/zsh/functions/Completion/Unix /usr/share/zsh/functions/Completion/X /usr/share/zsh/functions/Completion/Zsh /usr/share/zsh/functions/Completion/openSUSE /usr/share/zsh/functions/Exceptions /usr/share/zsh/functions/MIME /usr/share/zsh/functions/Math /usr/share/zsh/functions/Misc /usr/share/zsh/functions/Newuser /usr/share/zsh/functions/Prompts /usr/share/zsh/functions/TCP /usr/share/zsh/functions/VCS_Info /usr/share/zsh/functions/VCS_Info/Backends /usr/share/zsh/functions/Zftp /usr/share/zsh/functions/Zle)


export PROMPT_EOL_MARK=''
