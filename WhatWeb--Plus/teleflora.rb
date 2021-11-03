Plugin.define do
name "Teleflora"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

]
version "0.1"
description "Teleflora is a flower delivery service."
website "https://www.teleflora.com/"
matches [
	{ :search => "headers[set-cookie]", :regexp => /^sdt/, :name=>"sdt cookie" },
] 
end
