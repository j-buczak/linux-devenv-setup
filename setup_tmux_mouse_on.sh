TMUXCONF="/home/$USER/.tmux.conf"
if [ ! -f $TMUXCONF ]; then
    echo "Creating .tmux.conf and setting up mouse on"
    touch $INPUTRC
    cat <<EOT >> $TMUXCONF
set -g mouse on
EOT
fi
