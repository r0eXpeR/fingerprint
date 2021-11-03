Plugin.define do
name "Axentra-HipServ"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Axentra-HipServ - Digital Home/SOHO Software Platform for Internet Gateway and NAS Devices"
website "http://www.axentra.com/en/"
matches [
    {:name=>"HOMEBASEID Cookie", :regexp=>/HOMEBASEID=/, :search=>"headers[set-cookie]"},
    {:regexp=>//, :search=>"headers[x-axentra-version]"},
    {:search=>"headers", :text=>'x-axentra-version'},
    {:text=>'<meta name="author" content="Axentra">'},
    {:text=>'<title id="document_title">Axentra :: Digital Home/SOHO Software Platform for Internet Gateway and NAS Devices</title>'},
    {:text=>'content="Axentra'}
]
passive do
	m=[]
	if @headers["set-cookie"] =~ /HOMEBASEID=/
		m << { :name=>"HOMEBASEID Cookie" }
		if @headers["location"] =~ /\?hipname=([^&]+)/
			m << { :account=>@headers["location"].scan(/\?hipname=([^&]+)/) }
		end
	end
	m
end
end
