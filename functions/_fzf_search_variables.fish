function _fzf_search_variables --argument-names set_show_output set_names_output --description "Search and preview shell variables. Replace the current token with the selected variable."
    if test -z "$set_names_output"
        printf '%s\n' '_fzf_search_variables requires 2 arguments.' >&2
        commandline --function repaint
        return 22
    end
    set -f all_variable_names (string match --invert history <$set_names_output)
    set -f current_token (commandline --current-token)
    set -f cleaned_curr_token (string replace -- '$' '' $current_token)
    set -f variable_names_selected (
        printf '%s\n' $all_variable_names |
        _fzf_wrapper --preview "_fzf_extract_var_info {} $set_show_output" \
            --prompt="Variables> " \
            --preview-window="wrap" \
            --multi \
            --query=$cleaned_curr_token \
            $fzf_variables_opts
    )
    if test $status -eq 0
        commandline --current-token --replace (
            if string match --quiet -- '$*' $current_token
                string join " " \${$variable_names_selected}
            else
                string join " " $variable_names_selected
            end
        )
    end
    commandline --function repaint
end