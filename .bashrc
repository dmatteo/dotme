### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Java path export
export JAVA_HOME=/usr/local/jdk1.7.0_45                                                               
export PATH=$PATH:$JAVA_HOME/bin                 

### IntelliJ Path
export PATH="/home/domo/idea/bin:$PATH"

# Displaying git branch inside prompt
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
    local       GREEN="\[\033[0;32m\]"
    local       WHITE="\[\033[0;37m\]"

    #PS1="[\u@\h \w]$GREEN \$(parse_git_branch)$WHITE\$ "
    PS1="[\u@\h \W]$GREEN \$(parse_git_branch)$WHITE\$ "
    PS2='> '
    PS4='+ '
}
proml

