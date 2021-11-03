Plugin.define do
name "Epson-Printer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Epson printer"
website "http://www.epson.com/"
dorks [
'intitle:"EpsonNet (Config|WebAssist) Rev"'
]
matches [
	{ :version=>/^EPSON-HTTP\/([^\s]+)/, :search=>"headers[server]" },
	{ :module=>/<TITLE>EpsonNet (WebAssist |Config )Rev\.([^<]+)<\/TITLE>/ },
]
end
