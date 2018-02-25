function gd
	set parent_directory (dirname (dirname (status --current-filename)))
	set script_dir {$parent_directory}/scripts/
    # echo $script_dir # Debug
	git diff --color | eval ${script_dir}/diff-so-fancy
end

