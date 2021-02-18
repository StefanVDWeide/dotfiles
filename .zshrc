# Start starship zsh shell when opening zsh
eval "$(starship init zsh)"

# fix Hyper first line precent sign
unsetopt PROMPT_SP

# Set the current working directory as the name of the terminal tab
function set_win_title(){
    echo -ne "\033]0; $(basename $PWD) \007"
}
precmd_functions+=(set_win_title)

# Command aliases
# Connect to the Raspberry Pi
alias pi='ssh pi@192.168.178.220'

# Connect to the Broken Phone DigitalOcean server
alias tbpp='ssh sjors@188.166.75.202'

# Quality of live commands
alias lsa='ls -lah'
alias zshreload="source ~/.zshrc"
