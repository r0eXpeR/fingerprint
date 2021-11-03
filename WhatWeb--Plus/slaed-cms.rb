Plugin.define do
name "SLAED-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description ""
website "http://slaed.net/"
dorks [
'"Powered by SLAED CMS"'
]
matches [
{ :version=>/<meta name="generator" content="SLAED CMS ([^"^>]+)">/ },
{ :string=>/<br \/>Powered by <a href="http:\/\/www\.slaed\.net" target="_blank" title="SLAED CMS">SLAED CMS<\/a> &copy; 2005-(20[\d]{2}) SLAED/ },
]
end
