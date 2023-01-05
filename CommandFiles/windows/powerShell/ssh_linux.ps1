# 接続先が変わったらこの三つを変える
$LINUX_HOST = "192.168.2.106"
$LINUX_USER = "suzukisatoshi"
$LINUX_HOME = "/Users/suzukisatoshi/"

$LINUX_TARGET = $LINUX_USER + "@" + $LINUX_HOST

function mac {
    code -n --remote ssh-remote+$LINUX_TARGET
}

function mach {
    $fullPath = $LINUX_HOME + $args[0]
    code --remote ssh-remote+$LINUX_TARGET $fullPath
}
function opg {
    code -r --remote ssh-remote+$LINUX_TARGET $LINUX_HOME/TerminalOutputs/firstLog.json
}
function opg2 {
    code -r --remote ssh-remote+$LINUX_TARGET $LINUX_HOME/TerminalOutputs/secondLog.json
}

function ginput {
    code -r --remote ssh-remote+$LINUX_TARGET $LINUX_HOME/GitHub/graphql_request/input.gql
}

function rusttest {
    code -r --remote ssh-remote+$LINUX_TARGET $LINUX_HOME/projects/king
}

