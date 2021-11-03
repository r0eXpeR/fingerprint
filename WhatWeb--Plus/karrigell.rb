Plugin.define do
name "Karrigell"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Karrigell is a flexible Python web framework, with a clear and intuitive syntax. It is independent from any database, ORM or templating engine, and lets the programmer choose between a variety of coding styles."
website "http://karrigell.sourceforge.net/en/index.html"
matches [
    {:regexp=>/^Karrigell/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'Karrigell'},
    {:version=>/^Karrigell ([^\s]+)$/, :search=>"headers[server]"},
    {:version=>/^Karrigell\/([^\s]+) /, :search=>"headers[server]"}
]
end
