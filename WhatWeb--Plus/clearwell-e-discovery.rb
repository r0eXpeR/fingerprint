Plugin.define do
name "Clearwell-E-Discovery"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Clearwell E-Discovery Platform is the leading enterprise e-discovery solution that enables enterprises, governments, and law firms to manage legal, regulatory, and investigative matters using a single application. The Clearwell Platform was purpose-built for e-discovery, making it easy for organizations to defensibly solve real-world challenges across the entire e-discovery lifecycle from legal hold and collections through analysis, review and production."
website "http://www.clearwellsystems.com/"
dorks [
'intitle:"Clearwell E-Discovery Platform log in"'
]
matches [
    {:search=>"headers", :text=>'Clearwell'},
    {:text=>'Clearwell E-Discovery Platform log in'},
    {:url=>"/esa/", :text=>'/><a class="needHelp" style="text-decoration:none" href="javascript:logonHelp();void(0);">Need help?</a>'},
    {:url=>"/esa/", :text=>'<title>Clearwell E-Discovery Platform log in</title>'}
]
passive do
	m=[]
	if @headers["server"] =~ /^Clearwell$/
		m << { :name=>"HTTP Server Header" }
		m << { :version=>@body.scan(/<p class="build">v([^<]+)<\/p>/) } if @body =~ /<p class="build">v([^<]+)<\/p>/
	end
	m
end
end
