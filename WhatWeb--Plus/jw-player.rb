Plugin.define do
name "JW-Player"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

]
version "0.1"
description "JW Player provides video and audio streaming"
website "https://www.jwplayer.com/"
matches [
	{ :search => "headers[set-cookie]", :regexp => /^SEOT/, :name=>"SEOT cookie" },
] 
end
