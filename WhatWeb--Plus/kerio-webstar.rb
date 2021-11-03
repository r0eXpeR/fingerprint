Plugin.define do
name "Kerio-WebSTAR"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Kerio WebSTAR (formerly 4D WebSTAR and StarNine WebSTAR) is an HTTP web server for Mac OS X with older versions running on classic Mac OS. On June 30, 2008, WebSTAR was officially discontinued. Technical support for the product ended on June 30, 2009. - More info: en.wikipedia.org/wiki/Kerio_WebSTAR"
matches [
    {:regexp=>/^(Kerio_|WebSTAR|4D_WebStar)/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'4D_WebStar'},
    {:search=>"headers", :text=>'Kerio_WebSTAR'},
    {:search=>"headers", :text=>'WebSTAR'},
    {:version=>/^4D_WebStar_[A-Z]\/([\d\.]+)/, :search=>"headers[server]"},
    {:version=>/^Kerio_WebSTAR\/([^\s^\(]+)/, :search=>"headers[server]"},
    {:version=>/^WebSTAR ([\d\.]+ .+)$/, :search=>"headers[server]"},
    {:version=>/^WebSTAR\/([^\s^\(]+)/, :search=>"headers[server]"}
]
end
