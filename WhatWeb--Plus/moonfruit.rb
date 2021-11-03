Plugin.define do
name "MoonFruit"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "MoonFruit CMS"
website "https://www.moonfruit.com/"
matches [
	{ :search => "headers[set-cookie]", :regexp => /markc/, :name=>"markc cookie" },
	{ :search => "headers[set-cookie]", :regexp => /^moonfruit/, :name=>"moonfruit cookie" },
] 
end
