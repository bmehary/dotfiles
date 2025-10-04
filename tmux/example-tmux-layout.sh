

# run: source example-tmux-layout

alias example-tmux-session='
    tmux new-session -d -s k8s -n main \
    \; split-window -v -t k8s:0.0 \
    \; split-window -h -t k8s:0.1 \
    \; new-session -d -s editors -n pluto \
    \; new-window -t editors -n saturn \
    \; \
    \; send-keys -t k8s:0.0 "echo hello from term; clear" C-m \
    \; send-keys -t k8s:0.1 "cd ~; clear" C-m \
    \; \
    \; send-keys -t editors:pluto "cd ~/.dotfiles; clear" C-m \
    \; send-keys -t editors:pluto "clear; echo hello from pluto" C-m \
    \; send-keys -t editors:saturn "cd ~/.dotfiles/nvim; clear" C-m \
    \; send-keys -t editors:saturn "clear; echo hello from saturn" C-m'
