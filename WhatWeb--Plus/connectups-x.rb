Plugin.define do
name "ConnectUPS-X"
authors [
  "Andrew Horton",

]
version "0.1"
description "The ConnectUPS-X Web/SNMP device allows you to connect various types of UPS directly to the Ethernet network and the Internet. It provides telnet, SSH, SNMP and a web interface"
website "http://powerquality.eaton.com/Products-services/Power-Management/Connectivity/connectups.asp"
dorks [
'intitle:"ConnectUPS" inurl:"PSummary.html"'
]
matches [
    {:regexp=>/<TITLE>ConnectUPS (Web\/SNMP Card|SNMP\/WEB Adapter)<\/TITLE>/},
    {:search=>"headers", :text=>'UPS_Server/'},
    {:text=>"UPS_Server/1.0",:search=>"headers[server]"},
    {:text=>'UPS Firmware version'},
    {:url=>"/PSummary.html", :name=>"Firmware Revision", :firmware=>/<b>Firmware Revision<\/b><\/td>\s+<td><table><tr><td><b>\s+([^<]+)/},
    {:url=>"/PSummary.html", :name=>"UPS Firmware version", :firmware=>/<b>UPS Firmware version<\/b><\/td>\s+<td><table><tr><td><b>([^<]+)/},
    {:url=>"/PSummary.html", :name=>"UPS Model", :model=>/<b>UPS Model<\/b><\/td>\s+<td><table><tr><td><b>([^<]+)/}
]
end
