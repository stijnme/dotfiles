alias eocBuildDev="grunt buildDev && cordova build android"
#alias eocBuildDev="grunt buildDev && cordova build android && mv platforms/android/app/build/outputs/apk/debug/app-debug.apk $1"
alias cdwin="cd /mnt/c/Users/smertens.EXPERTUM-PC-SME/"
alias dotconfig='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# jWorksheet timetracker
alias jWorkSheet='java -jar jWorkSheetSetup.0.90/jWorkSheet.jar'


# Git aliasses
alias ga="git add"
alias gc="git commit -m"
alias gd="git diff"
alias gds="git diff --staged"
alias gg="git pull"
alias gl="git log --name-status"
alias gp="git push"
alias gs="git status"

# List top processes that use the most memory
alias psmem="ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head"
