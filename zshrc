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
	docker
	git 
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
	nvm use system &> /dev/null 
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
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="spaceship-prompt/spaceship"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# POWERLEVEL9K_MODE='nerdfont-complete'
# POWERLEVEL9K_MODE='awesome-fontconfig'
# POWERLEVEL9K_MODE='nerd-fonts'
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "


# SPACESHIP_PROMPT_ORDER=(
#   user          # Username section
#   dir           # Current directory section
#   host          # Hostname section
#   git           # Git section (git_branch + git_status)
#   hg            # Mercurial section (hg_branch  + hg_status)
#   exec_time     # Execution time
#   line_sep      # Line break
#   vi_mode       # Vi-mode indicator
#   jobs          # Background jobs indicator
#   node          # Node.js section
#   exit_code     # Exit code section
#   char          # Prompt character
# )
# SPACESHIP_PACKAGE_SHOW=true
SPACESHIP_NODE_DEFAULT_VERSION="$(node -v)"
SPACESHIP_ROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  ruby          # Ruby section
  node          # Node.js section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubecontext   # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
source $ZSH/oh-my-zsh.sh

# SPACESHIP_TIME_SHOW=true
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "


if [[ $USER != "root" ]]; then
	#statements
	### Added by Zplugin's installer
	source $HOME'/.zplugin/bin/zplugin.zsh'
	autoload -Uz _zplugin
	(( ${+_comps} )) && _comps[zplugin]=_zplugin
	### End of Zplugin's installer chunk

	# zplugin light zdharma/fast-syntax-highlighting
	# zplugin light zsh-users/zsh-autosuggestions
	# zplugin light zsh-users/zsh-completions
	# zplugin light buonomo/yarn-completion

	zplugin light zsh-users/zsh-history-substring-search
	zplugin light zdharma/fast-syntax-highlighting
	zplugin light zsh-users/zsh-autosuggestions
	zplugin light zsh-users/zsh-completions
	zplugin light "buonomo/yarn-completion"
else
	source '/root/.zplugin/plugins/buonomo---yarn-completion/yarn-completion.plugin.zsh'
	source '/root/.zplugin/plugins/zsh-users---zsh-autosuggestions/zsh-autosuggestions.zsh'
	source '/root/.zplugin/plugins/zsh-users---zsh-history-substring-search/zsh-history-substring-search.zsh'
	source '/root/.zplugin/plugins/zdharma---fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh'
	source '/root/.zplugin/plugins/zsh-users---zsh-completions/zsh-completions.plugin.zsh'
fi



# source ~/.local/bin/virtualenvwrapper.sh
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# SPACESHIP_PROMPT_ORDER=(
#   user          # Username section
#   dir           # Current directory section
#   host          # Hostname section
#   git           # Git section (git_branch + git_status)
#   hg            # Mercurial section (hg_branch  + hg_status)
#   exec_time     # Execution time
#   line_sep      # Line break
#   vi_mode       # Vi-mode indicator
#   jobs          # Background jobs indicator
#   exit_code     # Exit code section
#   char          # Prompt character
#   node 
# )
# SPACESHIP_NODE_SHOW=true




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



