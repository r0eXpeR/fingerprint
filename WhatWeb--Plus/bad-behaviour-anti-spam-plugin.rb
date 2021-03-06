Plugin.define do
name "BadBehaviourAntiSpamPlugin"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Bad Behaviour Anti-Spam Plug-in that supports many PHP projects including phpBB, MediaWiki and Wordpress."
website "http://bad-behavior.ioerror.us/"
matches [
	{ :search => "headers[set-cookie]", :regexp => /bb2_screener_/, :name=>"bb2_screener_ cookie" },
] 
end
