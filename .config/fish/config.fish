function fish_prompt
    powerline-shell --shell bare $status
end

source /usr/share/autojump/autojump.fish

set -gx GOPATH $HOME/Projects/RH/go
set -gx PATH $PATH $GOPATH/bin
set -gx PATH $PATH $HOME/Applications/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/Applications/google-cloud-sdk/path.fish.inc" ]; . "$HOME/Applications/google-cloud-sdk/path.fish.inc"; end
