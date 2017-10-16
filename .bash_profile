### Source all dotfiles
for DOTFILE in $(find $HOME/.dotfiles -name ".[^.]*" ! -name ".bash_profile" -type f)
do
	[ -f "$DOTFILE" ] && source $DOTFILE
done

### Set history size
HISTSIZE=1000000
