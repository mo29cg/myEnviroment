## ps1(PowerShell) の配置

$HOME\Documents\WindowsPowerShell に配置すればいいはずだが、

一応、 `echo $PROFILE `で確認するべき
$PROFILE が示すファイルがコマンドを置くファイル

## bat(CommandPrompt)の配置

```
SETX /M PATH "%PATH%;C:\Users\suzuki\Documents\my_scripts"
```

このコマンドを使って `C:\Users\suzuki\Documents\my_scripts` に PATH を通して my_scripts 内に bat ファイルを全て置く
