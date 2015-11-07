function _strip_diff_leading_symbols
    set color_code_regex "(\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K])"
    echo $color_code_regex

    sed -r "s/^($color_code_regex)diff --git .*"'$'"//g" | \
        sed -r "s/^($color_code_regex)index .*"'$'"/\n\1"'$'"(_rule)/g" | \
        sed -r "s/^($color_code_regex)\+\+\+(.*)"'$'"/\1+++\5\n\1"'$'"(_rule)\x1B\[m/g" |\
        sed -r "s/^($color_code_regex)[\+\-]/\1 /g"
end