Plugin.define do
name "LANCOM-Device"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "LANCOM Systems is a provider of innovative and reliable communications solutions, Secure Access, VPN and Wireless LAN with high technological capabilities, easy configuration and unified control of all products."
website "http://www.lancom-systems.nl/"
matches [
	{ :regexp=>/^LANCOM/, :search=>"headers[server]" },
	{ :version=>/^LANCOM [^\s]+ .+ ([\d\.]+) \/ [\d]{2}\.[\d]{2}\.[\d]{4}$/, :search=>"headers[server]" },
	{ :model=>/^LANCOM ([^\s]+) .+ [\d\.]+ \/ [\d]{2}\.[\d]{2}\.[\d]{4}$/, :search=>"headers[server]" },
	{ :string=>/^LANCOM [^\s]+ (.+) [\d\.]+ \/ [\d]{2}\.[\d]{2}\.[\d]{4}$/, :search=>"headers[server]" },
]
end
