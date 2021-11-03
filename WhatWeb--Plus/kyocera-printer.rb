Plugin.define do
name "Kyocera-Printer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Web interface for Kyocera printers. Some models have built in fax and scanner capabilities."
website "http://global.kyocera.com/"
matches [
	{ :regexp=>/^KM-MFP-http/, :search=>"headers[server]" },
	{ :version=>/^KM-MFP-http\/V([\d\.]+)$/, :search=>"headers[server]" },
	{ :version=>/^KM-httpd\/([\d\.]+)$/, :search=>"headers[server]" },
	{ :version=>/^JC-HTTPD\/([\d\.]+)$/, :search=>"headers[server]" },
	{ :string=>"Scanner", :version=>/^NetworkScanner WebServer Ver([\d\.]+)$/, :search=>"headers[server]" },
]
passive do
	m=[]
	if @headers["server"] =~ /^KM-MFP-http\/V([\d\.]+)$/
		m << { :model=>@body.scan(/^var ModelName="([^"]+)";/) } if @body =~ /^var ModelName="([^"]+)";/
	end
	m
end
end
