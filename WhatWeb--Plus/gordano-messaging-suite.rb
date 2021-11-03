Plugin.define do
name "Gordano-Messaging-Suite"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Gordano WebMail Server web interface"
website "http://gordano.com/products/webmail.htm"
matches [
    {:search=>"headers", :text=>'Gordano'},
    {:search=>"headers[server]", :version=>/^Gordano (Messaging Suite )?Web Server v([^\s]+)$/, :offset=>1 }
]
end
