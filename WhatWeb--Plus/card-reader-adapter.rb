Plugin.define do
name "Card-Reader-Adapter"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Card Reader Adapter - Unknown manufacturer [Korean]"
matches [
{ :certainty=>75, :status=>401, :text=>'<HTML> <Title> 401 unAuthorized </title>                   <body> <H1> 401 unauthorized request </H1></body>                   </HTML>' },
]
passive do
	m=[]
	if @status == 401 and @headers["www-authenticate"] =~ /^Basic realm="System Login"$/ and @headers["server"] == "httpd" and @body =~ /^<HTML> <Title> 401 unAuthorized <\/title>                   <body> <H1> 401 unauthorized request <\/H1><\/body>                   <\/HTML>$/
		m << { :name=>"WWW-Authenticate Realm, HTTP Server and HTML" }
	end
	m
end
end
