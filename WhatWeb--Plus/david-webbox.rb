Plugin.define do
name "David-WebBox"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "David WebBox is a remote data storage center."
website "http://www.tobit.com/davidfx/access/"
matches [
    {:search=>"headers", :text=>'David-WebBox'},
    {:search=>"headers[server]", :version=>/^David-WebBox\/([^\s]+ \([^\)]+\))$/}
]
end
