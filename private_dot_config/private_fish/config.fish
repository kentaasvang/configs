if status is-interactive
    # Commands to run in interactive sessions can go here

    # execute tmux if not tmux
    if ! set -q TMUX
	exec tmux
    end
end
