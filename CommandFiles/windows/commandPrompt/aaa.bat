@echo off

rmdir /s /q C:\Users\suzuki\GitHub\myEnvironment\nvda
xcopy /H /I /s C:\Users\suzuki\AppData\Roaming\nvda C:\Users\suzuki\GitHub\myEnvironment\nvda
cd C:\Users\suzuki\GitHub\myEnvironment
