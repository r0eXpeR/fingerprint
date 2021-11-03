Plugin.define do
name "PyroCMS"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Pyro is a CMS built for Laravel."
website "https://pyrocms.com/"
matches [
	{ :search => "headers[set-cookie]", :regexp => /_pyrocms_/, :name=>"PyroCMS cookie" },
] 
end
