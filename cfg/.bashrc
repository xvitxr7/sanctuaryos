[[ $- != *i* ]] && return

# ================= INCLUDES =================

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
. "$DIR/.bashrc_colors"

[[ $PS1 &&
  ! ${BASH_COMPLETION_VERSINFO:-} &&
  -f /usr/share/bash-completion/bash_completion ]] &&
    . /usr/share/bash-completion/bash_completion

# ================= VARIABLES ================

PRINT_SANCTOS_WARNING=1

# basic arrow keys history search
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# ================== ALIASES =================

# ls
alias ls='ls --color=auto'
alias l='ls -la'
alias la='ls -la'
alias ll='ls -ll'

alias grep='grep --color=auto'

# ================== PS1 =====================

# SANCTOS_LOGO
figlet SanctuaryOS

# SANCTOS_WARNING
if [[ $PRINT_SANCTOS_WARNING -ge 1 ]] then
    printf '\n'
	printf "${Yellow}Warning:${Color_Off} Reckless use of SanctuaryOS's terminal can impact your credit score negatively!\n"
    printf "Tampering with highly priviliged components of your system can lock you out of SanctuaryOS ${Red}permanently${Color_Off}!\n"
    echo "Please refer to a skilled individual for maintenance instead."
    printf "More information on ${Blue}[SANCTOS_HPRLNK]${Color_Off}.\n\n"
fi

PS1='\u@\[\033[32m\]\h\[\033[0m\] \w $ '
