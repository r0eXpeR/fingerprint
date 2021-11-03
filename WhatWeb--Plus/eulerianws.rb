Plugin.define do
name "EulerianWS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Eulerian Technologies Web Server (EulerianWS) [French]"
website "http://www.eulerian.com/fr/"
matches [
	{ :version=>/<td align="right"><address>EulerianWS\/([\d\.]+)<\/address><\/td><\/tr>/ },
	{ :version=>/^[\s]*EulerianWS\/([^\s^\r^\n]+)/, :search=>"headers[server]" },
]
end
