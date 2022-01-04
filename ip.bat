@ECHO off
cls
:start
ECHO.
ECHO 1. Configura ip 192.168.171.1
ECHO 2. Configura ip 192.168.10.100
ECHO 3. configura ip DHCP
ECHO 4. Exit
set choice =
set /p choice=Digite o numero para printar: 
if not '%choice%' =='' set choice=%choice:~0,1%
if '%choice%' == '1' goto con1
if '%choice%' == '2' goto con2
if '%choice%' == '3' goto con3
if '%choice%' == '4' goto end
ECHO "%choice%" nao valido, digite novamente
ECHO.
goto start
:con1
ECHO Setando ip para 192.168.171.1
netsh interface ip set address "Ethernet 2" static 192.168.171.13 255.255.255.0 192.168.171.1 1
goto end

:con2
ECHO Setando ip para 192.168.10.100
netsh interface ip set address "Ethernet 2" static 192.168.10.100 255.255.255.0 192.168.10.1 1
goto end

:con3
ECHO Setando ip para DHCP
netsh interface ip set address "Ethernet 2" dhcp

:bye
ECHO tchau
goto end

:end
