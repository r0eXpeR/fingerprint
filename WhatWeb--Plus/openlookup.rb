Plugin.define do
name "OpenLookup"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "OpenLookup is a public, administratively decentralized key-value datastore. It offers an XML-RPC interface compatible with OpenDHT, but it is not a DHT. Instead, it fully replicates the datastore among service providers."
website "http://openlookup.googlecode.com/"
dorks [
'"OpenLookup Node Status" intitle:Openlookup "To query a node via round-robin DNS"'
]
matches [
{ :text=>'<h2>OpenLookup Node Status</h2>' },
{ :version=>/<p><a href="http:\/\/openlookup\.googlecode\.com\/">Source code and\n	further information<\/a> are available\.  This is OpenLookup V([^<]+)\.<\/p>/ },
]
end
