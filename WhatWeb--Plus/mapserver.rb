Plugin.define do
name "MapServer"
authors [
  "Aung Khant, http://yehg.net",

  "Brendan Coles <bcoles@gmail.com>", 
  "Andrew Horton", 

]
version "0.3"
description "Detect MapServer CGI application (http://www.mapserver.org/)"
dorks [
'inurl:cgi-bin/mapserv/?map'
]
matches [
 {:name=>"Version", :url=>"?map=*", :version=>/<\/HEAD>\s*<!\-\- MapServer version (.*?)\s/ },
 {:name => "Invalid Map Parameter", :url=>"/cgi-bin/mapserv/?map=*", :regexp=>/<BODY BGCOLOR="#FFFFFF">\s*msLoadMap(): Regular expression error/},
 {:name => "Invalid Map Parameter", :url=>"/cgi-bin/mapserv/?map=*", :regexp=>/<HEAD><TITLE>MapServer Message<\/TITLE><\/HEAD>\s*<!\-\- MapServer version/}
]
passive do
	m=[]
	if @body == "No query information to decode. QUERY_STRING is set, but empty.\n"
		m << { :name=>"Error Message" }
	end
	m
end
end
