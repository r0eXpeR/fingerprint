Plugin.define do
name "Netref"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Website used to be http://www.netref.net/"
dorks [
'"powered by Netref"'
]
matches [
{ :text=>'Annuaire Netref : http://www.netref.net' },
{ :version=>/<a href=['|"]?http:\/\/www.netref.(fr|net)['|"]? class=['|"]?lienp['|"]?[^>]*>Powered by Netref ([\d\.]+) &copy; [0-9]{4}<\/a>/, :offset=>1 },
]
end
