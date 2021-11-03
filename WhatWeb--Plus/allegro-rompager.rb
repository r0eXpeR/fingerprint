Plugin.define do
name "Allegro-RomPager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.4"
description "The RomPager suite of products enable your engineering team to leverage proven Web-based technologies in your networked embedded device."
website "http://www.allegrosoft.com/embedded-web-server"
matches [
	{ :version=>/^[\s]*RomPager\/([^\s]+)/, :search=>"headers[server]" },
	{ :version=>/^[\s]*Allegro-Software-RomPager\/([^\s]+)/, :search=>"headers[server]" },
	{ :text=>"", :search=>"headers[ext]" },
]
end
