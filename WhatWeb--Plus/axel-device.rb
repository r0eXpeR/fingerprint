Plugin.define do
name "Axel-Device"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Axel design and manufacture innovative TCP/IP based Thin Client Terminals and Office Servers for Windows, Unix/Linux and AS/400 environments. Axel products are unique in having no embedded operating system."
website "http://www.axel.com/"
dorks [
'"Syntax Error or Not Axel XML data"'
]
passive do
	m=[]
	if @headers["server"] =~ /^Axel Admin Server$/
		m << { :name=>"HTTP Server Header" }
		if @body =~ /^<AxelAdmin>$/
			m << { :string=>@body.scan(/^<Name>([^\s^<]+)<\/Name>$/) } if @body =~ /^<Name>([^\s^<]+)<\/Name>$/
			m << { :firmware=>@body.scan(/^<Version>([^\s^<]+)<\/Version>$/) } if @body =~ /^<Version>([^\s^<]+)<\/Version>$/
		end
	end
	m
end
matches [
    {:search=>"headers", :text=>'Axel Admin Server'}
]
end
