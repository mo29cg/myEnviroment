# 仕事で使う一時的なコマンドなどはこっちに切り出す
. $HOME\Documents\WindowsPowerShell\job_functions.ps1
# linux系の外部開発環境いじる系の奴
. $HOME\Documents\WindowsPowerShell\ssh_linux.ps1

function tme {
    code -r ~/tomorrowMemo.txt
}
function blp {
    code -r ~/bluePrint.txt
}