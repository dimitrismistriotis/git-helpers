function gd
	set parent_directory (dirname (dirname (status --current-filename)))
	set script_dir {$parent_directory}/scripts/
    # echo $script_dir # Debug
	git diff --color | diff-highlight | _git_helpers_strip_diff_leading_symbols
end

