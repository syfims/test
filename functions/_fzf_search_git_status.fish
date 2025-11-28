function _fzf_search_git_status --description "Search the output of git status. Replace the current token with the selected file paths."
    if not git rev-parse --git-dir >/dev/null 2>&1
        echo '_fzf_search_git_status: Not in a git repository.' >&2
    else
        set -f preview_cmd '_fzf_preview_changed_file {}'
        if set --query fzf_diff_highlighter
            set preview_cmd "$preview_cmd | $fzf_diff_highlighter"
        end
        set -f selected_paths (
            git -c color.status=always status --short |
            _fzf_wrapper --ansi \
                --multi \
                --prompt="Git Status> " \
                --query=(commandline --current-token) \
                --preview=$preview_cmd \
                --nth="2.." \
                $fzf_git_status_opts
        )
        if test $status -eq 0
            set -f cleaned_paths
            for path in $selected_paths
                if test (string sub --length 1 $path) = R
                    set --append cleaned_paths (string split -- "-> " $path)[-1]
                else
                    set --append cleaned_paths (string sub --start=4 $path)
                end
            end
            commandline --current-token --replace -- (string join ' ' $cleaned_paths)
        end
    end
    commandline --function repaint
end