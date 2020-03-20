function fish_prompt
    powerline-shell --shell bare $status
end

function pj-watch
  set PJ $argv[1]
  if [ -z $PJ ]
    echo "Needs a Prowjob ID"
    return
  end
  while [ -z $POD ]
     echo "Waiting for pod to be assigned for Prowjob"
     set POD (oc get pj $PJ -o jsonpath='{.status.pod_name}')
     sleep 5
  end
  echo "Pod: $POD"
  while ! oc logs $POD -c test -f
     echo "Waiting for pod to run"
     echo "Status: "(oc get pod $POD -o jsonpath={.status.phase})
     sleep 5
  end
end

source /usr/share/autojump/autojump.fish

set -gx GOPATH $HOME/Projects/RH/go
set -gx PATH $PATH $GOPATH/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/Applications/google-cloud-sdk/path.fish.inc" ]; . "$HOME/Applications/google-cloud-sdk/path.fish.inc"; end
