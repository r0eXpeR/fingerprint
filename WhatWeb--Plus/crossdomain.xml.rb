Plugin.define do
name "crossdomain_xml"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin extracts allowed domain from crossdomain.xml"
matches [
	{ :text=>'<cross-domain-policy>', :path=>"crossdomain.xml" },
	{ :text=>'<site-control permitted-cross-domain-policies="none"/>', :string=>"none", :module=>"Permit", :path=>"crossdomain.xml" },
	{ :string=>/<allow-access-from domain="([^"]+)"/, :path=>"crossdomain.xml", :module=>"Allow" },
]
end
