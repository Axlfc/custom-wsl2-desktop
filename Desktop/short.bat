@echo off

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%SYSTEMDRIVE%\Users\Axel F C\Desktop\Files.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%SYSTEMDRIVE%\Users\Axel F C\Desktop\nemo.vbs" >> %SCRIPT%
echo oLink.IconLocation = "%SYSTEMDRIVE%\Users\Axel F C\Desktop\Nemo_Desktop_icon.ico" >> %SCRIPT%
echo oLink.WorkingDirectory = "%SYSTEMDRIVE%\Users\Axel F C\Desktop\Nemo_Desktop_icon.ico" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%

del %SCRIPT%
