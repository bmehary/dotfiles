

# Notes:
# 1. To run this type 'source example-tmux-layout'
# 2. C-m is Enter key
# 3. This creates two tmux sessions: 'k8s' and 'editors'
#    - k8s session has 3 panes in one window
#    - editors session has 2 windows: pluto and saturn

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

function example-tmux-session1 () {
    local project_name="template-project"
    local project_dir=~
    
    # Create windows
    tmux new-session -d -s $project_name -n editor
    tmux new-window -t $project_name -n flex 
    tmux new-window -t $project_name -n term1 
    tmux new-window -t $project_name -n term2

    # Initialize windows 
    tmux send-keys -t $project_name:0.0 "cd $project_dir; clear; vim ." C-m
    tmux send-keys -t $project_name:1.0 "cd $project_dir; clear; echo free use terminal" C-m
    tmux send-keys -t $project_name:2.0 "cd $project_dir; clear; echo spare terminal" C-m
    tmux send-keys -t $project_name:3.0 "cd $project_dir; clear; echo spare terminal" C-m
    
    # Select window
    tmux select-window -t term1
}

function example-tmux-session2 () {
    tmux new-session -d -s k8s -n main
    tmux split-window -v -t k8s:0.0
    tmux split-window -h -t k8s:0.1
    tmux new-session -d -s editors -n pluto
    tmux new-window -t editors -n saturn
    
    tmux send-keys -t k8s:0.0 "echo hello from term; clear" C-m
    tmux send-keys -t k8s:0.1 "cd ~; clear" C-m

    tmux send-keys -t editors:pluto "cd ~/.dotfiles; clear" C-m
    tmux send-keys -t editors:pluto "clear; echo hello from pluto" C-m
    tmux send-keys -t editors:saturn "cd ~/.dotfiles/nvim; clear" C-m
    tmux send-keys -t editors:saturn "clear; echo hello from saturn" C-m
}