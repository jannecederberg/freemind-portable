@echo off

set USERDATA=Settings
set APPROOT=App

start "" /min /b ..\Java\bin\javaw -Xmx256M -Xss8M -Duser.home=%USERDATA% -cp %APPROOT%\lib\freemind.jar;%APPROOT%\lib\forms-1.0.5.jar;%APPROOT%\lib\jibx\jibx-run.jar;%APPROOT%\lib\jibx\xpp3.jar;%APPROOT%\lib\bindings.jar freemind.main.FreeMindStarter
