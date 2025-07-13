#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

git_branch() {
	git branch 2>/dev/null | sed -n '/\* /s///p'
}

get_folder_icon() {
	if [ "$PWD" = "$HOME" ]; then
		echo "󰋜"
	else
		echo ""
	fi
}

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1=' [\u@\h $(get_folder_icon) \W]\$ '

neofetch
