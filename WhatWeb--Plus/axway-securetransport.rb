Plugin.define do
name "Axway-SecureTransport"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Axway SecureTransport is a secure, multi-protocol managed file transfer solution"
website "http://www.axway.com/products-solutions/mft/gateways/securetransport"
dorks [
'intitle:"Welcome to SecureTransport"'
]
matches [
    {:certainty=>75, :text=>'<title>Welcome to SecureTransport</title>'},
    {:search=>"headers", :text=>'SecureTransport'},
    {:search=>"headers[server]", :version=>/^SecureTransport\/([^\s]+)/},
    {:text=>'<!-- /application.bar -->'},
    {:text=>'Welcome to SecureTransport'}
]
end
