Plugin.define do
name "WorldNow"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "WorldNow CMS. Bought and rebranded by Frankly in 2015."
website "http://franklyinc.com/"
matches [
	{ :search => "headers[set-cookie]", :regexp => /^wn_cg/, :name=>"wn_cg cookie" },
] 
end
