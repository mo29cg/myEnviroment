@echo off

@REM sはサブディレクトリも含めるという意味 qはそのときに確認メッセージなしにする
rmdir /s /q %HOMEPATH%\GitHub\myEnvironment\nvda
hは隠しファイルや設定ファイルも含めるという意味　iはコピー先ディレクトリがない場合に新しく作るという意味
xcopy /H /I /s C:\Users\suzuki\AppData\Roaming\nvda C:\Users\suzuki\GitHub\myEnvironment\nvda
cd C:\Users\suzuki\GitHub\myEnvironment
