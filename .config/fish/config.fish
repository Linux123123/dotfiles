set fish_greeting                      # Supresses fish's intro message
set TERM "xterm-256color"              # Sets the terminal type
set EDITOR "code"                      # $EDITOR
set VISUAL "code"                      # $VISUAL
set TERMINAL "alacritty"               # Terminal
set LANG "en_US.UTF-8"                 # Language
set LC_ALL "en_US.UTF-8"               # LC_ALL

### ALIASES ###
# doas as sudo
alias sudo='doas --'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# Colorize grep output (good for log files)
alias grep='grep --color=auto'

alias beak='cd /home/linux123123/Github/ptero-dev'

function beak --wraps beak
    /home/linux123123/Github/ptero-dev/beak $argv
end

alias emh='cd /home/linux123123/Github/emh-dev'

function emh --wraps emh
    /home/linux123123/Github/emh-dev/beak $argv
end

alias sparked='cd /home/linux123123/Github/sparked-dev'

function sparked --wraps sparked
    /home/linux123123/Github/sparked-dev/beak $argv
end

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

starship init fish | source
