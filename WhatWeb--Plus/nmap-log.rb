Plugin.define do
name "Nmap-Log"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "This plugin identifies nmap plain-text logs and extracts the hostname, OS, active ports and nmap version. It does not work for logs in the XML file format."
website "http://www.insecure.org/nmap/"
passive do
	m=[]
	if @body =~ /^Interesting ports on (.+):[\r]?$/ and @body =~ /^Starting (n|N)map /
		m << { :version=>@body.scan(/^Starting Nmap ([^\s]+) \( http:\/\/nmap.org \) at /) } if @body =~ /^Starting Nmap ([^\s]+) \( http:\/\/nmap.org \) at /
		m << { :version=>@body.scan(/^Starting nmap V. ([^\s]+) by fyodor@insecure.org/) } if @body =~ /^Starting nmap V. ([^\s]+) by fyodor@insecure.org/
		m << { :string=>"Target: "+@body.scan(/^Interesting ports on (.+):[\r]?$/)[0][0] }
		m << { :string=>"OS: "+@body.scan(/^Remote operating system guess: ([^\r^\n]*)/)[0][0] } if @body =~ /Remote operating system guess: ([^\r^\n]*)/
		if @body =~ /Port[\s]+State[\s]+Service/i and @body =~ /^([\d]{1,5})\/(udp|tcp)[\s]+open[\s]+([a-z]+)/
			@body.scan(/^([\d]{1,5})\/(udp|tcp)[\s]+open[\s]+([a-z]+)/).each { |service| m << { :string=>service[0]+"("+service[1]+")("+service[2]+")" } if service.size == 3 and service[0] =~ /[\d]{1,5}/ }
		end
	end
	m
end
end
