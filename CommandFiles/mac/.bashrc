#  my custom setting
export ep="$HOME/TerminalOutputs/firstLog.json"
export ep2="$HOME/TerminalOutputs/secondLog.json"

export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
eval "$(anyenv init -)"

source ~/.job_functions

alias wudo="python3 $HOME/GitHub/wsl-sudo/wsl-sudo.py"
alias hsup="python3 $HOME/GitHub/wsl-sudo/wsl-sudo.py /mnt/c/Users/suzuki/Downloads/HearthstoneAccess/HearthstoneAccess.exe"

alias opg="code -r $HOME/TerminalOutputs/firstLog.json"
alias opg2="code -r /home/$(whoami)/TerminalOutputs/secondLog.json"
alias tme="code -r /home/$(whoami)/TerminalOutputs/tomorrowMemo.txt"

gish(){
        git status -s &> $ep
}
gibn(){
        git branch --show-current
}
gisn(){
        git diff --staged --name-only
}

ep(){
        "$@" &> $HOME/TerminalOutputs/firstLog.json
}

epu2(){
        "$@" |& cstm &> $HOME/TerminalOutputs/secondLog.json
}

ep2(){
        "$@" &> $HOME/TerminalOutputs/secondLog.json
}
ca(){
        ts-node ~/GitHub/createEthereumAddress/test.ts
}
grl(){
        gh run view $1 --log | cstm | ts-node $HOME/GitHub/runLogAccess/format.ts &> $ep
}
grlf(){
        gh run view $1 --log-failed | cstm | ts-node $HOME/GitHub/runLogAccess/format.ts &> $ep
}
frlo(){
        sed -e 's/\([0-9]\{7\}Z\)/\1\n  /g' > $ep
}

# delete color code
cst(){
    sed -r -u "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g"
}
#for mac
cstm(){
    sed -E -u "s/"$'\E'"\[([0-9]{1,2}(;[0-9]{1,2})*)?[mGK]//g"
}
tst(){
    code -n $HOME/GitHub/tsTester
}
btcp(){
    coin -f btc
}
ethp(){
    coin -f eth
}
docks(){
        open -a Docker
}
docke(){
        pkill -SIGHUP -f /Applications/Docker.app 'docker serve' 
}
pri(){
        ts-node $HOME/GitHub/seeDb/src/index.ts $@
}
epu(){
        randomVar=$@
        unbuffer $randomVar |& cstm &> $HOME/TerminalOutputs/firstLog.json
}
grequest(){
                ts-node $HOME/GitHub/graphql_request/test.ts &> $HOME/TerminalOutputs/firstLog.json 
}
. "$HOME/.cargo/env"
