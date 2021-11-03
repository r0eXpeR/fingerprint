Plugin.define do
name "IceWarp-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "IceWarp Unified Communications Server is a fully integrated email server, webmail server, groupware, instant messaging, VoIP / SIP, text messaging."
website "http://www.icewarp.com/"
matches [
	{ :regexp=>/^IceWarp/, :search=>"headers[server]" },
	{ :version=>/^IceWarp\/(.+)$/, :search=>"headers[server]" },
	{ :version=>/^IceWarp WebSrv\/(.+)$/, :search=>"headers[server]" },
]
end
