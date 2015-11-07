# http://stackoverflow.com/questions/6127328/how-can-i-delete-all-git-branches-which-have-been-merged
function delete_merged_branches
	git branch --merged | grep -v "\*" | grep -v "master" | xargs -n 1 git branch -d
end