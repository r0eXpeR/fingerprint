Plugin.define do
name "Ericsson-TV-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Ericsson Integrated Receiver Decoders - web interface"
website "http://www.ericsson.com/ourportfolio/products/integrated-receiver-decoders?nav=fgb_101_348|fgb_101_749"
matches [
    {:search=>"headers", :text=>'Ericsson Television Web server'},
    {:search=>"headers[server ]", :regexp=>/^Ericsson Television Web server$/}
]
end
