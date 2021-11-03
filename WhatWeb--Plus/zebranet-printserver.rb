Plugin.define do
name "ZebraNet-PrintServer"
authors [
  "Andrew Horton",

]
version "0.1"
description "Print Server for Zebra mobile printers. Provides a wireless/ethernet network interface for parallel port printers. Uses listed on the website range from  card printers, kiosk printers, mobile printers, RFID printers, to industrial printers"
website "http://www.zebra.com/us/en/products-services/accessories/print-servers.html"
dorks [
'"ZebraNet PrintServer" "Status and Configuration" "Cancel Job" -guide'
]
matches [
{:name=>"h1 tag",
:string=>/<H1>([^\)]+) - ZebraNet PrintServer<\/H1>/}
]
end
