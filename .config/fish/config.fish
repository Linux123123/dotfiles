set -U fish_user_paths $fish_user_paths $HOME/.local/bin/ (yarn global bin)
set fish_greeting                      # Supresses fish's intro message
set TERM "xterm-256color"              # Sets the terminal type
set EDITOR "code"                      # $EDITOR
set VISUAL "code"                      # $VISUAL
set TERMINAL "alacritty"               # Terminal
set LANG "en_US.UTF-8"                 # Language
set LC_ALL "en_US.UTF-8"               # LC_ALL

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

### ALIASES ###
# doas as sudo
alias sudo='doas --'

# navigation
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'


# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias beak='/home/linux123123/Github/ptero-dev-v1/beak'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# bare git repo alias for dotfiles
alias config="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"

starship init fish | source

# Brew
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
