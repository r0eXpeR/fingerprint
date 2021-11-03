Plugin.define do
name "WoW-Raid-Manager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "WoW Raid Manager or WRM for short is a PHP based application supporting World of Warcraft guilds."
website "http://www.wowraidmanager.net/"
matches [
{ :certainty=>75, :ghdb=>'"Raid Management Provided by WoW Raid Manager"' },
{ :version=>/Raid Management Provided by <a href="http:\/\/www.wowraidmanager.net\/">WoW Raid Manager<\/a> v([\d\.]+)/ },
]
end
