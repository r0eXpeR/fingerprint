Plugin.define do
name "Windows-Remote-Printing"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Windows remote printing interface displays networked printers, print job owner usernames and internal IP addresses."
dorks [
'inurl:Printers/ipp_0001.asp intitle:"All Printers on"'
]
matches [
{ :ghdb=>'inurl:"Printers/ipp_0001.asp" intitle:"All Printers on"' },
{ :regexp=>/<frame src="ipp_000[\d]\.asp\?eprinter=/ },
]
end
