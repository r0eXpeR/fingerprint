Plugin.define do
name "WordFence"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

]
version "0.1"
description "WordFence Wordpress Security Plugin"
website "http://www.WordFence.com/"
matches [
	{ :search => "headers[set-cookie]", :regexp => /^wfvt_/, :name=>"wfvt_ cookie" },
] 
end
