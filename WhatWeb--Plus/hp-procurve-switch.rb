Plugin.define do
name "HP-ProCurve-Switch"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "HP ProCurve Switch"
website "http://www.hp.com/rnd/"
matches [
    {:regexp=>/^eHTTP/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'eHTTP'},
    {:text=>'ProCurve Switch'},
    {:version=>/^eHTTP v([\d\.]{1,3})$/, :search=>"headers[server]"}
]
passive do
	m=[]
	if @headers["server"] =~ /^eHTTP/
		m << { :model=>@headers["www-authenticate"].scan(/Basic realm="(HP|ProCurve) ([^"]{6})"/)[0][1] } if @headers["www-authenticate"] =~ /Basic realm="(HP|ProCurve) ([^"]{6})"/
		m << { :model=>@body.scan(/<title>[^\(]+ProCurve[^\(]+Switch[^\(]+\((ProCurve )?([^\(]+)\)[^\(]+<\/title>/m)[0][1] } if @body =~ /<title>[^\(]+ProCurve[^\(]+Switch[^\(]+\((ProCurve )?([^\(]+)\)[^\(]+<\/title>/ 
	end
	m
end
end
