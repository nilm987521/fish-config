#!/usr/bin/fish
if type tmux > /dev/null; and test -z $VSCODE_INJECTION
    #if not inside a tmux session, and if no session is started, start a new session
    if test -z "$TMUX" ; and test -z $TERMINAL_CONTEXT
        tmux -2 attach; or tmux -2 new-session
    end
end
