# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(
		git
		zsh-autosuggestions	
		zsh-syntax-highlighting
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
alias sl='ls --color=auto'
alias ls='ls --color=auto'
alias ll="ls -al"
alias l="ls -al"
alias px="proxychains"
alias gc="google-chrome-stable"
alias nt='notion-app --proxy-server="socks5://127.0.0.1:1080"'
alias camera='kamoso'
alias cl='clear'
alias rm='rm -i'
# Save a lot of typing for common commands
alias gs="git status"
alias gc="git commit"
alias gl="git log --graph --oneline --all --decorate"
alias v="vim"
alias u="cd ../"
alias b="cd -"
alias r="ranger"
alias wget="unset http_proxy; unset https_proxy; tsocks wget"
alias trans="unset http_proxy; unset https_proxy; tsocks trans"
alias updb="source ~/.bashrc"
alias news="export BROWSER=google-chrome-stable; newsboat -r"

# Save you from mistyping
alias sl=ls

# Overwrite existing commands for better defaults
alias mv="mv -i"           # -i prompts before overwrite
alias mkdir="mkdir -p"     # -p make parent dirs as needed
alias df="df -h"           # -h prints human readable forma
alias install="sudo pacman -S"

alias excel="et"
alias jc="javac"

# Android related commands
alias syst='python2 /home/hacksang/Downloads/PaperExperiment/getPower/gettrace/sdk/platform-tools/systrace/systrace.py'
alias systm="syst gfx input view webview wm am sm audio video hal res rs power ss sched freq idle disk memory workq"
alias ad='adb devices'
alias as='adb shell'

#PS1='\[\033[01;32m\][\u@\h \[\033[01;34m\]\W]\[\033[00m\]\$ '
#export PATH=$PATH:/home/hacksang/.local/bin
export PATH=/usr/lib/ccache:$PATH


#export http=http://127.0.0.1:8000
#export https=http://127.0.0.1:8000

export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890

export ALL_PROXY=socks5://127.0.0.1:7891

export CLASSPATH=/home/hacksang:./
export JAVA_HOME=/usr/lib/jvm/java-18-openjdk

export _JAVA_AWT_WM_NONREPARENTING=1

#source /home/hacksang/.config/broot/launcher/bash/br
source /etc/profile.d/autojump.sh



# git configuration
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
	GIT_PROMPT_ONLY_IN_REPO=1
        source $HOME/.bash-git-prompt/gitprompt.sh
fi
export NEMU_HOME=/home/hacksang/Documents/ics2022/ics2022/nemu
export AM_HOME=/home/hacksang/Documents/ics2022/ics2022/abstract-machine

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/hacksang/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/hacksang/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/hacksang/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/hacksang/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

