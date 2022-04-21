# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source $(dirname $(gem which colorls))/tab_complete.sh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kukuh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  bgnotify
  zsh-autosuggestions
  zsh-syntax-highlighting
  brew
  kubectl
  helm
)

source $ZSH/oh-my-zsh.sh

# aliases
alias zshconfig="code ~/.zshrc"
alias src="omz reload"
alias pis="pod install"
alias intel="arch -x86_64"
alias ipis="arch -x86_64 pod install"
alias ls="colorls --sd -A"
alias pingg="ping www.google.com"

# ===== MClinica Project Directories
alias mclin="cd ~/Documents/mclinica"
alias myc="cd ~/Documents/mclinica/connect-mycare-ios-v2/"
alias mth="cd ~/Documents/mclinica/connect-mytotalhealth-ios"
alias swr="cd ~/Documents/mclinica/swipe-rx-ios-reborn"
alias pg="cd ~/Documents/mclinica/connect-pfizer-global-ionic"

# ===== NextJs Project Directories
alias dir_njs="cd ~/Documents/projects/nextJs"

# ===== Golang Project Directories
alias dir_go="cd ~/Documents/projects/golang"

# ===== Git
alias gpuo="git push origin HEAD --set-upstream"
alias gl="git pull origin $(current_branch)"
alias gcd="git checkout develop"
alias gcm="git checkout master"
alias gmd="git merge develop"
alias gfod="git fetch origin develop:develop"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin

# Exporting Development Tools
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:/$HOME/Documents/Tools/flutter/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
