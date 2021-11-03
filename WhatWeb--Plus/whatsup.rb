Plugin.define do
name "WhatsUp"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "WhatsUp - Network and Server Management Software"
website "http://www.whatsupgold.com/"
matches [
	{ :name=>"HTTP Server Header", :regexp=>/^WhatsUp/, :search=>"headers[server]" },
	{ :string=>"Gold", :version=>/^WhatsUp_Gold\/([\d\.]+)/, :search=>"headers[server]" },
	{ :string=>"Gold", :certainty=>75, :name=>"WWW-Authenticate", :regexp=>/^Basic realm="WhatsUp[\s]?Gold"/, :search=>"headers[www-authenticate]" },
]
end
