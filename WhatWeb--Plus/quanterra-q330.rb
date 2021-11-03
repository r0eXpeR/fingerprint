Plugin.define do
name "Quanterra-Q330"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Quanterra Q330 series - seismic data acquisition systems"
website "http://kmi.com/p-163-Home.aspx"
dorks [
'intitle:"Q330 Web Server" -"$ID$"'
]
matches [
	{ :text=>'<form action="BALEPWR.HTM" method="POST"><input type="SUBMIT" name="PWR" value="Turn on Baler Power"><br>' },
	{ :regexp=>/^Q330/, :search=>"headers[server]" },
	{ :version=>/^Q330 V([^\s]+)$/, :search=>"headers[server]" },
]
end
