Plugin.define do
name "Samsung-Printer"
authors [
  "Andrew Horton",

]
version "0.1"
description "Samsung. SyncThru Web Service - Embedded Web Server"
matches [
{:text=>'var debugMode = ("$$GSI_TCPIP_IP_ADDR$$".indexOf(".")' }
]
end
