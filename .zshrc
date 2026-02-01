neofetch
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# For tkinter 
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
alias clion="open /Applications/CLion.app"

alias systeminfo="system_profiler SPSoftwareDataType SPHardwareDataType"
alias ghc="gh repo create"
alias cls="colorls -a --sd"
alias x="exit"
alias c="clear && neofetch"
alias cc="cd && c"
alias gcm='git commit --message'
alias gcmb='git checkout $(git_main_branch)'
alias fzfn='nvim -o `fzf`'
alias n="neofetch"
alias load_monkey="./load_monkey.sh"
alias lsd="lsd -a"
alias brew_update="brew update && brew upgrade && brew cleanup"

export PATH=$(brew --prefix sqlite)/bin:$PATH

alias lvim="NVIM_APPNAME=lvim nvim"

eval "$(fzf --zsh)"
# --- setup fzf theme ---
fg="#ffffff"
bg="#1A0021"
bg_highlight="#002938"
purple="#9600EA"
blue="#165AFF"
cyan="#01E2F1"
# export FZF_DEFAULT_OPTS='--preview "kitty +kitten icat --transfer-mode file --place --clear {} || bat --style=numbers --color=always {} 2>/dev/null || echo {}" --layout=reverse --border --height 40% --layout=reverse --border'
# export FZF_DEFAULT_OPTS='--preview "kitty +kitten icat {} 2>/dev/null; bat --style=numbers --color=always {} 2>/dev/null || echo {}"'
# export FZF_DEFAULT_OPTS='--preview "sleep 0.9; kitty +kitten icat {} 2>/dev/null; bat --style=numbers --color=always {} 2>/dev/null || echo {}"'
export FZF_DEFAULT_OPTS='--preview "file --mime-type {} | grep -q image && kitty +kitten icat {} 2>/dev/null; file {} | grep -q text && bat --style=numbers --color=always {} 2>/dev/null || echo {}"'
export FZF_PREVIEW_WINDOW_TIMEOUT=5

function nvims() {
    items=("default" "lvim" ) # "kickstart" )
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}


bindkey -s ^a "nvims\n"
bindkey -s ^u "brew update && brew upgrade\n"
bindkey -r "^L"
bindkey '^y' autosuggest-accept

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh


# opam configuration
[[ ! -r /Users/cristiangutierrez/.opam/opam-init/init.zsh ]] || source /Users/cristiangutierrez/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(zoxide init --cmd cd zsh)"
export PATH="/opt/homebrew/opt/flex/bin:$PATH"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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
plugins=(git colored-man-pages rust golang)

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/Dotfiles/.p10k.zsh.
[[ ! -f ~/Dotfiles/.p10k.zsh ]] || source ~/Dotfiles/.p10k.zsh

export PATH="$HOME/.local/bin:$PATH"
