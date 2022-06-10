# http://stackoverflow.com/questions/6127328/how-can-i-delete-all-git-branches-which-have-been-merged
function delete_merged_branches
	# All merged ones   | Not master, main, *         | Remove branch
	git branch --merged | grep -v -E "master|main|\*" | xargs -n 1 git branch -d
end
