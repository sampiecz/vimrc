export PS1="\\u@\h \\w 🍑  "

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0073642" #black
    echo -en "\e]P8002b36" #brblack echo -en "\e]P1dc322f" #red
    echo -en "\e]P9cb4b16" #brred
    echo -en "\e]P2859900" #green
    echo -en "\e]PA586e75" #brgreen
    echo -en "\e]P3b58900" #yellow
    echo -en "\e]PB657b83" #bryellow
    echo -en "\e]P4268bd2" #blue
    echo -en "\e]PC839496" #brblue
    echo -en "\e]P5d33682" #magenta
    echo -en "\e]PD6c71c4" #brmagenta
    echo -en "\e]P62aa198" #cyan
    echo -en "\e]PE93a1a1" #brcyan
    echo -en "\e]P7eee8d5" #white
    echo -en "\e]PFfdf6e3" #brwhite
    clear #for background artifacting
fi

#alias python=python3

# makes virtual env wrapper work with python3 like I want 
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3 
VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3' 
source /usr/local/bin/virtualenvwrapper.sh

alias cor="sudo ./welcome-ubuntu.sh"
alias cor-d="sudo ./welcome-ubuntu-d.sh"
alias corhome="cd ~/CorrelatePro && clear"
alias cor-build="docker-machine ls && echo 1 && eval $(docker-machine env prod) && echo 2 && git pull origin master && docker-compose -f production.yml build && echo 3 && docker-compose -f production.yml up && echo 4"
alias cor-build-silent="docker-machine ls && eval $(docker-machine env prod) && git pull origin master && docker-compose -f production.yml build && docker-compose -f production.yml up -d"

# Docker & django quick commands local
alias wo="workon CorrelatePro"
alias edm="eval \$(docker-machine env prod)"
alias mm="docker-compose -f production.yml run django python manage.py makemigrations"
alias m="docker-compose -f production.yml run django python manage.py migrate"
alias b="docker-compose -f production.yml build"
alias u="docker-compose -f production.yml up"
