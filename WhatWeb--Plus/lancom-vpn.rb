Plugin.define do
name "LANCOM-VPN"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Administration of dynamic IP addresses by LANCOM Dynamic VPN devices. Revolutionary in the LANCOM Dynamic VPN technology is that fixed IP addresses are no longer needed: The IP addresses of the respective IPSec gateways are exchanged over ISDN before the connection is established. Internet-based VPN connections thereby escape the restriction of fixed and thus expensive IP addresses."
website "http://www.lancom.es/LANCOM-VPN.279.0.html"
matches [
	{ :regexp=>/^LANCOM.*VPN/, :search=>"headers[server]" },
	{ :model=>/^LANCOM ([\d]{4}[\+]?) VPN( \([^\)]+\))? ([\d\.]+) \/ ([\d]{2}.[\d]{2}.[\d]{4})$/, :offset=>0, :search=>"headers[server]" },
	{ :version=>/^LANCOM ([\d]{4}[\+]?) VPN( \([^\)]+\))? ([\d\.]+) \/ ([\d]{2}.[\d]{2}.[\d]{4})$/, :offset=>2, :search=>"headers[server]" },
	{ :string=>/^LANCOM ([\d]{4}[\+]?) VPN( \([^\)]+\))? ([\d\.]+) \/ ([\d]{2}.[\d]{2}.[\d]{4})$/, :offset=>3, :search=>"headers[server]" },
]
end
