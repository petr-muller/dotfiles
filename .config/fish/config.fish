function fish_prompt
    powerline-shell --shell bare $status
end

source /usr/share/autojump/autojump.fish

set -gx GOPATH $HOME/Projects/RH/go

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/afri/Applications/google-cloud-sdk/path.fish.inc' ]; . '/home/afri/Applications/google-cloud-sdk/path.fish.inc'; end
