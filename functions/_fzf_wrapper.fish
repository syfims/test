function _fzf_wrapper --description "Prepares some environment variables before executing fzf."
    set -f --export SHELL (command --search fish)
    set --query FZF_DEFAULT_OPTS FZF_DEFAULT_OPTS_FILE
    if test $status -eq 2
        set --export FZF_DEFAULT_OPTS '--cycle --layout=reverse --border --height=90% --preview-window=wrap --marker="*"'
    end
    fzf $argv
end