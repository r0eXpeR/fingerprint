Plugin.define do
name "Blazix"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Blazix is a high-performance full-featured Java application server. Blazix can be used as an Application Server or as a full Web Server."
website "http://www.blazix.com/"
matches [
    {:search=>"headers", :text=>'Blazix Java Server'},
    {:version=>/^Blazix Java Server ([^\s]+)$/, :search=>"headers[server]"}
]
end
