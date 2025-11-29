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
export PATH="$HOME/.local/bin:$PATH"

# BTP cli
SAP_BTP_CLI_AUTOCOMPLETE="$HOME/.config/.btp/autocomplete/scripts/sapbtpcli-autocomplete.plugin.sh" && source $SAP_BTP_CLI_AUTOCOMPLETE

# nvim
export PATH="$PATH:/opt/nvim-linux64/bin"
