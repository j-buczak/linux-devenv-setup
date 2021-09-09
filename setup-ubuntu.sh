echo "Echo!"

INPUTRC="/home/ubuntu/.inputrc"
BASHRC="/home/ubuntu/.bashrc"
if [ ! -f $INPUTRC ]; then
    echo "Creating .input rc and setting up reverse history search"
    touch $INPUTRC
    cat <<EOT >> $INPUTRC
# history search with pageUP & pageDown
"\e[5~": history-search-backward
"\e[6~": history-search-forward
EOT
    cat <<EOT >> $BASHRC
    
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000
EOT
fi
