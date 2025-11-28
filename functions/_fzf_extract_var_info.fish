function _fzf_extract_var_info --argument-names variable_name set_show_output --description "Extract and reformat lines pertaining to \$variable_name from \$set_show_output."
    string match --regex "^\\\$$variable_name(?::|\[).*" <$set_show_output |
        string replace --regex "^\\\$$variable_name(?:: )?" '' |
        string replace --regex ": \|(.*)\|" ' $1'
end