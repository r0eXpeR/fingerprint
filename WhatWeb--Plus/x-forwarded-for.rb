Plugin.define do
name "X-Forwarded-For"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin extracts the proxy server details from the X-Forwarded-For param of the HTTP header. X-Forwarded-For is a non-standard header introduced by the developers of the Squid proxy before the Via header was added to HTTP."
passive do
	m=[]
	m << { :string=>@headers["x-forwarded-for"].to_s } unless @headers["x-forwarded-for"].nil?
	m
end
end
