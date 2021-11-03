Plugin.define do
name "Teapot"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "HTCPCP, a protocol for controlling, monitoring, and diagnosing coffee pots."
website "http://www.apps.ietf.org/rfc/rfc2324.html"
passive do
	m=[]
	if @status == 418
		if @body =~ /<title>([^<]+)<\/title>/i
			m << { :string=>@body.scan(/<title>([^<]+)<\/title>/i) }
		else
			m << { :string=>"I'm a teapot" }
		end
	end
	m
end
end
