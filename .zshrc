#!/usr/bin/env zsh
# function powerline_precmd() {
#     PS1="$(powerline-shell --shell zsh $?)"
# }

# function install_powerline_precmd() {
#   for s in "${precmd_functions[@]}"; do
#     if [ "$s" = "powerline_precmd" ]; then
#       return
#     fi
#   done
#   precmd_functions+=(powerline_precmd)
# }

# if [ "$TERM" != "linux" ]; then
#     install_powerline_precmd
# fi
# unsetopt no_match

export ZSH=~/.oh-my-zsh
export TERM="xterm-256color"




# export HISTFILESIZE=100001
export HISTSIZE=1000000000000000
export SAVEHIST=1000000000099999


# plugins=(git bundler virtualenv virtualenvwrapper dotenv sublime tmux rbenv  gem kubectl colored-man-pages  redis-cli go heroku history httpie jsontools pyenv kops kube-ps1 minikube pip gulp extract )
# plugins=(git bundler virtualenv nvm dotenv sublime tmux rbenv  gem kubectl colored-man-pages  redis-cli go heroku history httpie jsontools pyenv kops kube-ps1 minikube pip gulp extract )
plugins=(
	# git 
	# bundler
	# virtualenv
	# sublime
	# rbenv
	# gem
	# colored-man-pages
	# redis-cli
	# go
	# heroku
	history
	# httpie
	jsontools
	# pyenv
	# pip
	extract
	)

# rbenv config
if [[ -d ~/.rbenv ]]; then
	#statements
	# export ZSH=~/.oh-my-zsh
	export PATH="$HOME/.rbenv/bin:$PATH"
	export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
	# eval "$(rbenv init -)"
	# export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
	# export PATH="$HOME/.rbenv/bin:$PATH"

fi

export PATH="$PATH:/usr/lib/dart/bin"
export PATH="$PATH:/Packages/bin"
export PATH="$PATH:/Packages"
#export NPM_CONFIG_PREFIX="/Packages"
export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$PATH:/usr/share/rvm/bin/"
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=( git bundler dotenv osx rake rbenv ruby colored-man-pages npm nvm )
# plugins=( git dotenv ruby colored-man-pages npm nvm gem )

# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
# POWERLEVEL9K_MODE='awesome-fontconfig'
# POWERLEVEL9K_MODE='nerd-fonts'




# source ~/.local/bin/virtualenvwrapper.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

###########################################################################################################################################################
# unknow config
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[cursor]='bold'

ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'
###########################################################################################################################################################

##########################################################################################################################
# coloer conifg 


DEFAULT_FOREGROUND=006 DEFAULT_BACKGROUND=-1
DEFAULT_COLOR=$DEFAULT_FOREGROUND




###########################################################################################################################
# VCS config




POWERLEVEL9K_VCS_GIT_GITLAB_ICON='🦊'
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='🐈️'
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON="" 




POWERLEVEL9K_VCS_CLEAN_FOREGROUND=""
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=""
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=""

POWERLEVEL9K_VCS_CLEAN_BACKGROUND="-1"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="-1"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="-1"
POWERLEVEL9K_VCS_GIT_GITHUB_ICON_BACKGROUND="-1"
POWERLEVEL9K_VCS_GIT_GITLAB_ICON_BACKGROUND="-1"
POWERLEVEL9K_VCS_GIT_HOOKS_BACKGROUND="-1"
POWERLEVEL9K_VCS_HG_HOOKS_BACKGROUND="-1"
POWERLEVEL9K_VCS_HIDE_TAGS_BACKGROUND="-1"
POWERLEVEL9K_VCS_INTERNAL_HASH_LENGTH_BACKGROUND="-1"
POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY_BACKGROUND="-1"
POWERLEVEL9K_VCS_SVN_HOOKS_BACKGROUND="-1"

POWERLEVEL9K_SHOW_CHANGESET=true

POWERLEVEL9K_CHANGESET_HASH_LENGTH=6


POWERLEVEL9K_VCS_SHORTEN_LENGTH=4
POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=11
POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_VCS_SHORTEN_DELIMITER=".."

POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-remotebranch git-tagname)

#############################################################################################################################
# icons 


POWERLEVEL9K_RAM_ICON='🐸️'
POWERLEVEL9K_AWS_EB_ICON="🌱" 
POWERLEVEL9K_AWS_ICON=""
POWERLEVEL9K_BATTERY_ICON="🔋"
POWERLEVEL9K_FREEBSD_ICON="😈"
POWERLEVEL9K_SUNOS_ICON='🌞' 
POWERLEVEL9K_ROOT_ICON="⚡"
POWERLEVEL9K_EXECUTION_TIME_ICON="⏳"
POWERLEVEL9K_NODE_ICON='⬢'
POWERLEVEL9K_CARRIAGE_RETURN_ICON='↩'
POWERLEVEL9K_FAIL_ICON='✘'
POWERLEVEL9K_OK_ICON="✔"  
POWERLEVEL9K_GO_ICON=""
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='↓'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='↑'
POWERLEVEL9K_VCS_REMOTE_BRANCH_ICON='→'
POWERLEVEL9K_VCS_STAGED_ICON='✚'
POWERLEVEL9K_VCS_BRANCH_ICON=" "
POWERLEVEL9K_LINUX_ICON="☕️"
POWERLEVEL9K_APPLE_ICON="🍎"
POWERLEVEL9K_VCS_TAG_ICON=" "
POWERLEVEL9K_TEST_ICON=""
POWERLEVEL9K_SWAP_ICON=""
POWERLEVEL9K_BACKGROUND_JOBS_ICON=""
POWERLEVEL9K_SERVER_ICON=""
POWERLEVEL9K_SSH_ICON=""
POWERLEVEL9K_OS_ICON_BACKGROUND='-1'
POWERLEVEL9K_TODO_ICON='📔'
POWERLEVEL9K_PYTHON_ICON='🐍'
POWERLEVEL9K_RUBY_ICON="♦️"

source $ZSH/oh-my-zsh.sh

##########################################################################################################################
# powerlevel dir config
 

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='-1'
POWERLEVEL9K_DIR_HOME_BACKGROUND="-1"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="-1"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='12'
POWERLEVEL9K_DIR_HOME_FOREGROUND="12"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="12"

POWERLEVEL9K_HOME_SUB_ICON='📂'
POWERLEVEL9K_FOLDER_ICON='📁'
POWERLEVEL9K_HOME_FOLDER_ABBREVIATION='~'
POWERLEVEL9K_HOME_ICON=$'🏠'


POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
POWERLEVEL9K_DIR_WRITABLE="echo 🔐"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="-1"
POWERLEVEL9K_DIR_HOME_BACKGROUND="-1"
POWERLEVEL9K_DIR_HOME_FOREGROUND="grey"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="013"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="-1"
POWERLEVEL9K_DIR_HOME_BACKGROUND="-1"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="239"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="-1"
POWERLEVEL9K_DIR_BACKGROUND="-1"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="124"


POWERLEVEL9K_LOCK_ICON='🔐'
POWERLEVEL9K_LOCK_ICON_BACKGROUND='-1'
POWERLEVEL9K_LOCK_BACKGROUND='-1'

POWERLEVEL9K_SHORTEN_DELIMITER='...'


POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='-1'
POWERLEVEL9K_DIR_WRITABLE_BACKGROUND='-1'

POWERLEVEL9K_DIR_BACKGROUND='-1'
POWERLEVEL9K_ETC_ICON='⚙'
POWERLEVEL9K_ETC_BACKGROUND='-1'
POWERLEVEL9K_ETC_ICON_BACKGROUND='-1'

POWERLEVEL9K_DIR_HOME_BACKGROUND='-1'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='-1'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='-1'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='-1'

POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true
POWERLEVEL9K_HOME_DIR_OMIT_FIRST_CHARACTER=true
POWERLEVEL9K_HOME_FOLDER_ABBREVIATION="%F{red} $(echo '🏠') %F{black}"

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

#############################################################################################################################
# user config


POWERLEVEL9K_USER_BACKGROUND='-1'

POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_ALWAYS_SHOW_USER=true

POWERLEVEL9K_USER_ICON='😎️'                    
POWERLEVEL9K_USER_SUDO_BACKGROUND='-1'
POWERLEVEL9K_USER_SUDO_FOREGROUND='011'
POWERLEVEL9K_USER_ROOT_BACKGROUND='-1'
POWERLEVEL9K_USER_ROOT_FOREGROUND='011'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='-1'
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='011'

#############################################################################################################################
# status

POWERLEVEL9K_STATUS_OK_BACKGROUND='-1'
POWERLEVEL9K_STATUS_OK_FOREGROUND='082'

#############################################################################################################################
# node version
POWERLEVEL9K_NODE_VERSION_BACKGROUND='-1'
POWERLEVEL9K_NODE_VERSION_FOREGROUND='47'

#############################################################################################################################
# time config
POWERLEVEL9K_TIME_BACKGROUND='-1'

#############################################################################################################################
# nvm config

POWERLEVEL9K_NVM_BACKGROUND="-1"

#############################################################################################################################
# pnpm icon

POWERLEVEL9K_CUSTOM_PNPM='cd "$(pwd)";echo 📦 $(pnpm -v)'
POWERLEVEL9K_CUSTOM_PNPM_BACKGROUND="-1"


#############################################################################################################################
# ram icon
# 
POWERLEVEL9K_RAM_BACKGROUND='-1'
POWERLEVEL9K_RAM_FOREGROUND='027'

#############################################################################################################################
# host icon

POWERLEVEL9K_HOST_LOCAL_BACKGROUND='-1'

#############################################################################################################################
# prompt config

POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
P9KGT_BACKGROUND='-1'

#############################################################################################################################
# prompt elements

POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX=" %(?:%{$fg_bold[blue]%}↓ :%{$fg_bold[red]%}↓ )"
POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX=" %(?:%{$fg_bold[blue]%} :%{$fg_bold[red]%} )"
POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX=""

# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" %(?:%{$fg_bold[039]%} ➜  :%{$fg_bold[red]%} ➜  )"



# virifica se esta rodadndo no terminal do vscode com base em uma variavel definida na configuração do vscode => shel env => vscode

if [[ $vscode == "true" ]] ; then
	POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(  'user' 'virtualenv' 'pyenv'   'dir_writable'  'dir'  'newline' 'node_version' 'custom_pnpm'  'ram'   'vcs'  )

	POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=( background_jobs  'node_version' 'custom_pnpm'   )
	POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=( )

else

	POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(  'user' 'virtualenv' 'pyenv'   'dir_writable'  'dir'  'newline'   'ram'   'vcs'  )

	POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=( background_jobs  'node_version' 'custom_pnpm'   )

fi

if  [[  $vscode == "true" ]]  ; then
	# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" %(?:%{$fg_bold[039]%}✔️  👉️   :%{$fg_bold[red]%}❌️ 👉️   )"
	POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" %(?:%{$fg_bold[green]%}❯   :%{$fg_bold[red]%}❯   )"
else
	# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" %(?:%{$fg_bold[039]%}✔️  👉️ :%{$fg_bold[red]%}❌️ 👉️ )"
	POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" %(?:%{$fg_bold[green]%}❯ :%{$fg_bold[red]%}❯ )"

fi
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_SUFFIX=" %(?:%{$fg_bold[039]%}▶  :%{$fg_bold[red]%}▶  )"

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="%F{black}%f"
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR="%F{$(( $DEFAULT_BACKGROUND - 2 ))}%f"

POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="%F{black}%f"
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="%F{$(( $DEFAULT_BACKGROUND - 2 ))}|%f"
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="%F{$(( $DEFAULT_BACKGROUND - 2 ))}%f"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false

POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true


POWERLEVEL9K_DISABLE_RPROMPT=false


#############################################################################################################################
# functions 

pi(){# echo "${*:1}"
	a=$(mkdir ~/.mypypi -p) 
	# shift 
	# echo $@
	ATUAL=$(pwd)
	cd ~/.mypypi
	pip download $@
	bkpPIP
	# pip install --user --no-index --find-links=file://$HOME/.mypypi $@
	# pip download $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $16 $17 $18 $19 $20 $21 $22 $23 $24 $25 $26 $27 $28 $29 $30 $31 $32 $33 $34 $35 $36 $37 $38 $39 $40 $41 $42 $43 $44 $45 $46 $47 $48 $49 $50 $51 $52 $53 $54 $55 $56 $57 $58 $59 $60 $61 $62 $63 $64 $65 $66 $67 $68 $69 $70 $71 $72 $73 $74 $75 $76 $77 $78 $79 $80 $81 $82 $83 $84 $85 $86 $87 $88 $89 $90 $91 $92 $93 $94 $95 $96 $97 $98 $99 
	cd $ATUAL
}


pi3(){
	a=$(mkdir ~/.mypypi -p) 

	# echo "${*:1}"
	# shift 
	# echo $@
	ATUAL=$(pwd)
	cd ~/.mypypi
	pip download $@
	bkpPIP
	# pip3 install --user --no-index --find-links=file://$HOME/.mypypi $@
	# pip download $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $16 $17 $18 $19 $20 $21 $22 $23 $24 $25 $26 $27 $28 $29 $30 $31 $32 $33 $34 $35 $36 $37 $38 $39 $40 $41 $42 $43 $44 $45 $46 $47 $48 $49 $50 $51 $52 $53 $54 $55 $56 $57 $58 $59 $60 $61 $62 $63 $64 $65 $66 $67 $68 $69 $70 $71 $72 $73 $74 $75 $76 $77 $78 $79 $80 $81 $82 $83 $84 $85 $86 $87 $88 $89 $90 $91 $92 $93 $94 $95 $96 $97 $98 $99 
	cd $ATUAL
}

bkpPIP(){
	cp ~/.mypypi ~/.mypypi-backup -r -u

}

#############################################################################################################################
# aliases

alias p='pwd'
alias rm='rm -i'
alias np='pnpm'
alias npo='pnpm --offline'
alias k='killall -g -I'
alias n='nano '
alias c='cat'
alias npmv='mpv --vid=no '
alias pn=np
alias pnx='pnpx '
alias pcwd='cd "$(pwd)"'
alias pioff='pip install --user --no-index --find-links=file://$HOME/.mypypi '
alias pi3off='pip3 install --user --no-index --find-links=file://$HOME/.mypypi '
alias cp='cp -r'

#############################################################################################################################
# completions 
# 
#  npm 
# source <(npm completion)
# 
# pip
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip3
# 
# nvm 
if [[ -d ~/.nvm ]]; then

	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
fi
# 
# kubectl 
# source <(kubectl completion zsh)
# 
# homebrew
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi
# 
# kubeadm
# source <(kubeadm completion zsh)
# 
