# Alias definitions.
# All your additions into a separate file: ~/.bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# If not running interactively, stop here
case $- in
    *i*) ;;
      *) return;;
esac

# Load bash-powerline
source ~/.bash-powerline.sh
