Plugin.define do
name "TeamSpeak-Server-Log"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin extracts the username and password from TeamSpeak server.log files."
matches [
{ :version=>/^[0-9]{2}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2},ALL,Info,server,[\s]+Server version: ([^\r^\n]+)/ },
]
passive do
	m=[]
	if @body =~ /-------------- log started at /
		if @body =~ /^[0-9]{2}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2},WARNING,Info,SERVER,	[super]*admin account info: username: [^\s]+ password: ([^\r^\n]+)/
			accounts=@body.scan(/^[0-9]{2}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2},WARNING,Info,SERVER,	[super]*admin account info: username: [^\s]+ password: ([^\r^\n]+)/)
			m << {:account=>accounts}
		end
	end
	m
end
end
