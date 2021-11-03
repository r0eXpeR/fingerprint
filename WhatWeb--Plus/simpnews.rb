Plugin.define do
name "SimpNews"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Simply a News system"
website "http://www.boesch-it.de/"
dorks [
'"powered by SimpNews"'
]
matches [
{ :version=>/<meta name="generator" content="SimpNews v([\d\.]+), \(c\)[\d]{4}[\-,]*[\d]{4} by Boesch EDV-Consulting"[^>]*>/ },
{ :version=>/ href="http:\/\/www.boesch-it.de[\/]*">SimpNews<\/a> V([\d\.]+) &copy;[\d]{4}[\-,]*[\d]{4} B&ouml;sch EDV-Consulting<\/div>/ },
{ :version=>/<br>Powered by <a class="copyright" target="_blank" href="http:\/\/www.boesch-it.de">SimpNews<\/a> V([\d\.]+) &copy;[\d]{4}[\-,]*[\d]{4} B&ouml;sch EDV-Consulting<\/font><\/td><\/tr><\/table><\/td><\/tr><\/table><\/div>/ },
{ :version=>/<br>Powered by SimpNews V([\d\.]+) &copy;[\d]{4}[\-,]*[\d]{4} B&ouml;sch EDV-Consulting<\/font><\/td><\/tr><\/table><\/td><\/tr><\/table><\/div>/ },
]
passive do
	m=[]
        m << { :name=>"simpnews[lastvisit] Cookie" } if @headers["set-cookie"] =~ /simpnews\[lastvisit\]=/
        m
end
end
