#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

PS1='\[\033[01;32m\][\u@\h \[\033[01;34m\]\W]\[\033[00m\]\$ '
#export PATH=$PATH:/home/hacksang/.local/bin


export http=http://127.0.0.1:8000
export https=http://127.0.0.1:8000

export http_proxy=socks5://127.0.0.1:1080
export https_proxy=socks5://127.0.0.1:1080

export ALL_PROXY=socks5://127.0.0.1:1080

export CLASSPATH=/home/hacksang:./
export JAVA_HOME=/usr/lib/jvm/java-18-openjdk

export _JAVA_AWT_WM_NONREPARENTING=1

source /home/hacksang/.config/broot/launcher/bash/br
source /etc/profile.d/autojump.sh



# git configuration
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
	GIT_PROMPT_ONLY_IN_REPO=1
        source $HOME/.bash-git-prompt/gitprompt.sh
fi
