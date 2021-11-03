Plugin.define do
name "TeaLeaf"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Tealeaf is a Customer Experience Management system now owned by IBM."
website "https://www.ibm.com/customer-engagement/tealeaf"
matches [
	{ :search => "headers[set-cookie]", :regexp => /^TLTSID/, :name=>"TLTSID cookie" },
	{ :search => "headers[set-cookie]", :regexp => /^TLTUID/, :name=>"TLTUID cookie" },
] 
end
