Plugin.define do
name "Connect2"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.1"
description "Message Handling System (MHS) is an important early email protocol developed by Novell. A compatible family of products from Infinite Technologies ( now Captaris - http://www.captaris.com ) and marketed under the name Connect2 were also very widely used as part of MHS-based email networks. - More info: http://en.wikipedia.org/wiki/Message_Handling_System"
matches [
	{ :regexp=>/for Connect2-SMTP/, :search=>"headers[server]" },
	{ :module=>/^(Web Services Module [^\s]+ \([\d]+\)) for Connect2-SMTP$/, :search=>"headers[server]" },
]
end
