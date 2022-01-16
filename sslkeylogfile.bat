@echo off

echo.
echo    #####  #####  #          #   #  #####  #   #     #      #####  ######
echo    #      #      #          #  #   #       # #      #      #   #  #
echo    #####  #####  #          ###    #####    #       #      # # #  #  ###
echo        #      #  #          #  #   #        #       #      #   #  #    #
echo    #####  #####  #####      #   #  #####    #       #####  #####  ######
echo.

echo Supported browsers in Windows Systems: Chrome, Firefox.
echo. 

if "%SSLKEYLOGFILE%" == "%USERPROFILE%\AppData\Local\Temp\sslkey.log" (
	echo [+] SSLKEYLOGFILE is set %SSLKEYLOGFILE%
) else (
	echo [-] SSLKEYLOGFILE is not set
	echo setting SSLKEYLOGFILE variable
	setx SSLKEYLOGFILE "%USERPROFILE%\AppData\Local\Temp\sslkey.log"
)

echo.
echo Close all Chrome or Firefox and reopen browser
echo In Wireshark
echo Edit --^> Preferences --^> Protocols --^> TLS
echo Under (Pre)-Master-Secret log filename
echo Select %USERPROFILE%\AppData\Local\Temp\sslkey.log and click on OK.
echo.

:loop
set wait=null
set /p wait=Type exit to close program: 
if %wait% == exit exit
goto loop
