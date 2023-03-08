function gd
    set diff_so_fancy (which diff-so-fancy)
    # echo $diff_so_fancy
    if [ -n "$diff_so_fancy" ]
        echo "Diff so fancy not available"
        exit -1
    end

    set parent_directory (dirname (dirname (status --current-filename)))
    set script_dir {$parent_directory}/scripts/
    # echo $script_dir # Debug
    git diff --color | eval $diff_so_fancy
end

