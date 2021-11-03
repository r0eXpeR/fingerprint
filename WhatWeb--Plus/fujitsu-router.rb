Plugin.define do
name "Fujitsu-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Fujitsu-Router"
website "http://fujitsu.com/"
matches [
	{ :model=>/^(Si-[A-Za-z\d]{4,10})$/, :search=>"headers[server]" },
]
end
