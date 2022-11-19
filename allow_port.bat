rem 1:name 2:portNo

IF %2==delete (
  netsh advfirewall firewall delete rule name=%1
) ELSE (
  netsh advfirewall firewall add rule dir=in action=allow name=%1 protocol=TCP localport=%2
)

pause