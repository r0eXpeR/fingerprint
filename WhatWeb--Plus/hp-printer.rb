Plugin.define do
name "HP-Printer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "HP Printer"
website "http://www.hp.com/"
matches [
    {:search=>"headers", :text=>'HP HTTP Server'},
    {:search=>"headers[server]", :model=>/^HP HTTP Server; HP (.+) series - /}
]
end
