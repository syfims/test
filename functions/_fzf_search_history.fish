function _fzf_search_history --description "Search command history. Replace the command line with the selected command."
    if test -z "$fish_private_mode"
        builtin history merge
    end
    if not set --query fzf_history_time_format
        set -f fzf_history_time_format "%m-%d %H:%M:%S"
    end
    set -f time_prefix_regex '^.*? │ '
    set -f commands_selected (
        builtin history --null --show-time="$fzf_history_time_format │ " |
        _fzf_wrapper --read0 \
            --print0 \
            --multi \
            --scheme=history \
            --prompt="History> " \
            --query=(commandline) \
            --preview="string replace --regex '$time_prefix_regex' '' -- {} | fish_indent --ansi" \
            --preview-window="bottom:3:wrap" \
            $fzf_history_opts |
        string split0 |
        string replace --regex $time_prefix_regex ''
    )
    if test $status -eq 0
        commandline --replace -- $commands_selected
    end
    commandline --function repaint
end