Plugin.define do
name "HP-System-Management-Homepage"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The HP System Management Homepage is a web-based interface that consolidates and simplifies the management of individual ProLiant and Integrity servers running Microsoft Windows or Linux operating systems, or HP 9000 and HP Integrity servers running HP-UX 11i."
website "http://h18002.www1.hp.com/products/servers/management/agents/index.html"
dorks [
'intitle:"HP System Management Homepage Login" (inurl:2381|inurl:2301)'
]
matches [
    {:certainty=>75, :regexp=>/<TITLE>HP System Management Homepage Login<\/TITLE>/},
    {:search=>"headers", :text=>'Compaq-HMMD'},
    {:search=>"headers", :text=>'CompaqHTTPServer'},
    {:search=>"headers[server]", :version=>/CompaqHTTPServer\/[^\s]+ HP System Management Homepage\/([\d\.]+)$/},
    {:search=>"headers[set-cookie]", :regexp=>/Compaq-HMMD=/},
    {:text=>'HP System Management Homepage'}
]
passive do
	m=[]
	if @body =~ /<TITLE>HP System Management Homepage Login<\/TITLE>/
		if @body =~ /systemname = "([^\"^\s]+)";[\s]+smhversion = "HP System Management Homepage v([^\"^\s]+)";[\s]+smhcopyright = "&copy;2003-20[\d]{2} Hewlett-Packard Development Company, L.P.";/
			m << { :string=>"#{$1}" }
			m << { :version=>"#{$2}" }
		end
	end
	m
end
end
