Plugin.define do
name "CUPS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Common UNIX Printing System (CUPS)"
website "http://www.cups.org/"
matches [
    {:search=>"headers", :text=>'CUPS'},
    {:search=>"headers[server]", :version=>/^CUPS\/([^\s]+)$/},
    {:search=>"headers[upgrade]", :regexp=>/^TLS\/1\.0,HTTP\/1\.1$/, :certainty=>25 }
]
end
