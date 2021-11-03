Plugin.define do
name "ClickMotive"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

]
version "0.1"
description "ClickMotive CMS"
website "http://example.com/"
matches [
	{ :search => "headers[set-cookie]", :regexp => /ddcaffinitygroup/, :name=>"ddcaffinitygroup cookie" },
	{ :search => "headers[set-cookie]", :regexp => /ddcpoolid/, :name=>"ddcpoolid cookie" },
] 
end
