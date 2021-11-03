Plugin.define do
name "PuTTY-Log"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin identifies instances of PuTTY log files and attempts to extract usernames, servers and software versions."
matches [
{ :regexp=>/=~=~=~=~=~=~=~=~=~=~=~= PuTTY log [0-9]{4}.[0-9]{2}.[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2} =~=~=~=~=~=~=~=~=~=~=~=/ },
]
passive do
	m=[]
	if @body =~ /=~=~=~=~=~=~=~=~=~=~=~= PuTTY log [0-9]{4}.[0-9]{2}.[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2} =~=~=~=~=~=~=~=~=~=~=~=/
		if @body =~ /^Connected to ([^\s]+)[\s]+Escape character is '\^\]'/
			modules=@body.scan(/^Connected to ([^\s]+)[\s]+Escape character is '\^\]'/)
			m << {:module=>modules}
		end
		if @body =~ /^([0-9a-zA-Z\-\.\@_]+)'s password:/
			modules=@body.scan(/^([0-9a-zA-Z\-\.\@_]+)'s password:/)
			m << {:module=>modules}
		elsif @body =~ /^login as: ([0-9a-zA-Z\-\._]+)/
			modules=@body.scan(/^login as: ([0-9a-zA-Z\-\._]+)/)
			m << {:module=>modules}
		end
		if @body =~ /^Event Log: Writing new session log \(SSH packets mode\) to file: /
			if @body =~ /^Event Log: Looking up host "([^\"]+)"/
				account=@body.scan(/^Event Log: Looking up host "([^\"]+)"/)
				m << {:account=>account}
			end
			if @body =~ /^Event Log: Server version:[\s]+([^\s]+)/
				version=@body.scan(/^Event Log: Server version:[\s]+([^\s]+)/)
				m << {:version=>version}
			end
		end
	end
	m
end
end
