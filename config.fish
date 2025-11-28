alias ls='exa --icons'
alias l='ls -l'
alias la='ls -la'
alias ll='ls -l'
alias ..='cd ..'
alias grep='grep --color=auto'
alias ping='ping -c 5'
abbr -a g git
abbr -a ga 'git add'
abbr -a gc 'git commit -m'
abbr -a gp 'git push'
abbr -a gl 'git pull'
abbr -a gs 'git status'
abbr -a gco 'git checkout'
abbr -a gcb 'git checkout -b'
abbr -a vim nvim
abbr -a i 'sudo pacman -S'
abbr -a u 'sudo pacman -Syu'
abbr -a r 'sudo pacman -Rns'
if status is-interactive
    if not functions -q fisher
        curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
    end
end
function mkcd
    mkdir -p $argv[1]
    cd $argv[1]
end
set -g fish_greeting
set -U fish_history_erase_duplicates 1
set -g FZF_LEGACY_KEYBINDINGS 0
set -x EDITOR nvim
set -x VISUAL nvim