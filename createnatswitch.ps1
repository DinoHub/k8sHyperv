 New-VMSwitch -Name NatSwitch -SwitchType Internal
 Get-NetAdapter
# Pause here, read the interface index you just created and place it in next line
 
 New-NetIPAddress -IPAddress 172.17.224.1 -PrefixLength 20 -InterfaceIndex 79
 New-NetNat -Name Nat-Switch-Outside -InternalIPInterfaceAddressPrefix 172.17.224.1/20
 
