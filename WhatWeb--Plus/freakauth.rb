Plugin.define do
name "FreakAuth"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "FreakAuth is a simple authentication library for the Code Igniter PHP framework"
website "http://freakauth.4webby.com/"
dorks [
'intitle:"FreakAuth" "Welcome on board ! / Login"'
]
matches [
    {:regexp=>/<title>FreakAuth &raquo; [^<]+<\/title>/},
    {:regexp=>/Welcome on board ! \/ <a href="http[^"]+">Login<\/a>		<\/div>/},
    {:search=>"headers", :text=>'FreakAuth'}
]
passive do
	m=[]
	m << { :name=>"FreakAuth Cookie" } if @headers["set-cookies"] =~ /^FreakAuth=/
	m << { :name=>"Location Header" } if @headers["location"] =~ /^\/framework\/index\.php$/
	m
end
end
