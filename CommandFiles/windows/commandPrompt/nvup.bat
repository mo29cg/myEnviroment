@echo off

@REM sはサブディレクトリも含めるという意味 qはそのときに確認メッセージなしにする
rmdir /s /q %HOMEPATH%\GitHub\myEnvironment\nvda
@REM hは隠しファイルや設定ファイルも含めるという意味　iはコピー先ディレクトリがない場合に新しく作るという意味
xcopy /H /I /s %HOMEPATH%\AppData\Roaming\nvda %HOMEPATH%\GitHub\myEnvironment\nvda
xcopy /y %HOMEPATH%\Documents\my_scripts\* %HOMEPATH%\GitHub\myEnvironment\commandFiles\windows\commandPrompt
cd %HOMEPATH%\GitHub\myEnvironment
