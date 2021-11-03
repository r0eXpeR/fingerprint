Plugin.define do
name "DZCP"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "deV!L`z Clanportal"
website "http://www.dzcp.de"
dorks [
'"2011 by deV!L`z Clanportal"'
]
matches [
    {:regexp=>/<!--\[ DZCP .{1} by Frank "deV!L" Herrmann - www.dzcp.de & Patrick "Richy" Richert - www.my-starmedia.de\]-->/},
    {:regexp=>/<!--\[ DZCP .{1} by Frank "deV!L" Herrmann - www.dzcp.de \]-->/},
    {:regexp=>/<script language="javascript" type="text\/javascript" src="..\/inc\/_templates_\/[^\/]+\/_js\/dzcp.js"><\/script>/},
    {:text=>'<!--[ DZCP'}
]
end
