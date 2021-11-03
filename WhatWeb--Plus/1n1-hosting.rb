Plugin.define do
name "1&1 Hosting"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "1&1 Hosting, Domains, Website Services & Servers"
website "https://www.1and1.com/"
matches [
	{ :search => "headers[set-cookie]", :regexp => /DIY_SB/, :name=>"DIY_SB cookie" },
] 
end
