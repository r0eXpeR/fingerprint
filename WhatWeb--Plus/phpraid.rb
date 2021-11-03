Plugin.define do
name "phpRaid"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "phpRaid is a raid management tool for World of Warcraft - a MMORPG developed by Blizzard."
website "http://www.spiffyjr.com/"
matches [
{ :certainty=>75, :text=>'Raid Management Provided by phpRaid' },
{ :version=>/Raid Management Provided by <a href="http:\/\/www.spiffyjr.com\/">phpRaid<\/a> v([\d\.]+)/ },
]
end
