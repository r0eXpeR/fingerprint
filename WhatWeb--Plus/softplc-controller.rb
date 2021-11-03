Plugin.define do
name "SoftPLC-Controller"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "All SoftPLC controller CPUs provide the same rich set of features. Every SoftPLC is a high-performance, feature-rich Programmable Automation Controller (PAC), combining the functions of a proprietary PLC with the benefits of both an open architecture design and computer technologies."
website "http://www.softplc.com/products.php"
passive do
	m=[]
	if @headers["server"].nil?
		if @status.to_s =~ /^302$/ and @headers["location"] =~ /\/syswww\/login\.xml/
			m << { :name=>"Location Header" }
		end
		m << { :name=>"SoftPLC Cookie" } if @headers["set-cookie"] =~ /^SoftPLC=-?[\d]+; Path=\//
	end
	m
end
end
