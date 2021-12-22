\


BASH_SCRIPT_DIRECTORY='/Users/Shared/scripts'


#make brew command work in zsh
export PATH="/opt/homebrew/bin:$PATH"
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> $HOME/.zshrc


#CONVENIENCE
alias lsa='ls -Flah'
alias sal='source ~/.bash_profile'
alias dush='du -sh'
alias dfhl='df -Hl'
alias cd..='cd ..'
alias ..='cd ..;pwd'
alias ...='cd ../..;pwd'
alias ....='cd ../../../;pwd'
alias edital='nano ~/.bash_profile;source ~/.bash_profile'
alias c='clear;echo "---------------------------------------------------------------------";date;echo "---------------------------------------------------------------------";'
alias h='history'
alis f='open .'
alias checkip='echo -n "Current Public IP is  ";curl -s icanhazip.com;echo -n "Reverse DNS Record is:  ";curl -s icanhazptr.com;echo "Current Private IPs are   ";ifconfig |grep "inet"'
alias al='cat ~/.bash_profile'
alias clearhistory='history -c; cat /dev/null > ~/.bash_history'
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias zencrypt='zip -re'
alias gping='ping -A -c 4 8.8.8.8'
alias rainbow='yes "$(seq 231 -1 16)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .02; done'
alias nchelp='echo "Use: nc -z -v -G 1 foo.bar port : to test a TCP connection."; echo "Use: nc -z -v -u foo.bar port : to scan for UDP port"; echo "Use nc -l port to listen on a specific port"'


#SCRIPTS
alias workon='$BASH_SCRIPT_DIRECTORY/personal/./workon.sh'
alias genpass='echo -n `openssl rand -base64 18`|pbcopy'
alias pbsort='pbpaste | sort | pbcopy'

#UTILITIES
#Make a web server in the current directory using python3
alias webserver='python3 -m http.server'


##FUNCTIONS
mcd ()
{
	mkdir -p -- "$1" &&
		cd -P -- "$1"
}

mcdo ()
{
	mkdir -p -- "$1" &&
		cd -P -- "$1"
	open .
}



twopen ()
{
#Open the given file in BB Edit (formerly TextWranglerOpen)
	open -a /Applications/BBEdit.app $1
}


sdig ()
{
	dig $@ +short
}

tping ()
{
	ping -c 2 $1
}

getspf ()
{
	$BASH_SCRIPT_DIRECTORY/production/./getSpfFull.pl $1
}

cwbookmark ()
{
pbpaste | sed 's;.*recid=0&;https://na.myconnectwise.net/v4_6_release/services/system_io/router/openrecord.rails?;' | pbcopy
}

nopen ()
{
       $BASH_SCRIPT_DIRECTORY/personal/nopen.sh "$@"
}

notes ()
{
       $BASH_SCRIPT_DIRECTORY/personal/notes.sh "$@"
}
