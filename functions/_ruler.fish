function _ruler
	printf (echo "%"(tput cols)"s\n") | tr " " "X"
end