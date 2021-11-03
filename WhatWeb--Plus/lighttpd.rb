Plugin.define do
name "lighttpd"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

	"Andrew Horton", 

]
version "0.5"
description "Lightweight open-source web server."
website "http://www.lighttpd.net/"
matches [
    {:os=>/^[\s]*lighttpd \(([^\)]+)\)/, :search=>"headers[server]"},
    {:regexp=>/lighttpd/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'server: lighttpd'},
    {:search=>'headers[server]',:offset=>1, :regexp=>/lighttpd(?:.([\d.]+))?/},
    {:version=>/^[\s]*lighttpd\/([^\s]+)/, :search=>"headers[server]"}
]
end
