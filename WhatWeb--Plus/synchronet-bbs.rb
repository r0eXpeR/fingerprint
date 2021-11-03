Plugin.define do
name "Synchronet-BBS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Synchronet Multinode BBS Software - Open source BBS that works on the DOS, Windows, or OS/2 operating system and supports multiple simultaneous users with hierarchical message and file areas, multi-user chat, and the ever-popular BBS door games."
website "http://www.synchro.net/"
matches [
	{ :regexp=>/^Synchronet BBS/, :search=>"headers[server]" },
	{ :version=>/^Synchronet BBS for .+ Version ([^\s]+)$/, :search=>"headers[server]" },
]
end
