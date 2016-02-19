@ECHO OFF

:LOOP
    PING 8.8.8.8 | find "TTL=" || GOTO RESTART_INTERFACE
GOTO LOOP

:RESTART_INTERFACE
    netsh interface set interface "Wireless Network Connection" admin=DISABLED
    netsh interface set interface "Wireless Network Connection" admin=ENABLED
    SLEEP 10m
GOTO LOOP