Plugin.define do
name "Alter-Native"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Alter-Native - IBM UniVerse database and Client/Server solutions provider. SPID Product provider, creating dynamic Web servers using database links on Unix systems. - Homepage [Offline]"
website "http://www.alternative.fr/"
matches [
	{ :string=>/^SPID HTTP Server - Alter Native \(([^\)]+)\)/, :search=>"headers[server]" },
]
end
