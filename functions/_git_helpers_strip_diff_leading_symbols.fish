function _git_helpers_strip_diff_leading_symbols
    set color_code_regex "(\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K])"
    # echo $color_code_regex # DEBUG
    set ruler_output (_git_helpers_ruler)

    sed -r "s/^($color_code_regex)diff --git .*"'$'"//g" | \
        sed -r "s/^($color_code_regex)index .*"'$'"/\n\1"{$ruler_output}"/g" | \
        sed -r "s/^($color_code_regex)\+\+\+(.*)"'$'"/\1+++\5\n\1"{$ruler_output}"\x1B\[m/g" |\
        sed -r "s/^($color_code_regex)[\+\-]/\1 /g"
end