Plugin.define do
name "FITELnet-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "FITELnet router"
website "http://www.furukawa.co.jp/fitelnet/"
passive do
	m=[]
	if @headers["server"] =~ /^GR-HTTPD Server\/([\d\.]+)$/
		m << { :certainty=>75, :name=>"HTTP Server Header" }
		m << { :model=>@body.scan(/<TITLE> FITELnet-([A-Z][\d]+) [^>]+<\/TITLE>$/) } if @body =~ /<TITLE> FITELnet-([A-Z][\d]+) [^>]+<\/TITLE>$/
		m << { :string=>@body.scan(/<TITLE> FITELnet-[A-Z][\d]+ [^>]+\(([\da-f:]{17})\)<\/TITLE>$/) } if @body =~ /<TITLE> FITELnet-[A-Z][\d]+ [^>]+\(([\da-f:]{17})\)<\/TITLE>$/
	end
	m
end
matches [
    {:search=>"headers", :text=>'GR-HTTPD Server'},
    {:text=>'FITELnet-'}
]
end
