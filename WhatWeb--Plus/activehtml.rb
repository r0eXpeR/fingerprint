Plugin.define do
name "ActiveHTML"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "seliSoft ActiveHTML provides Active-Server-Pages (ASP) to nearly every web server supporting CGI."
website "http://www.selisoft.com/en/ahtml/"
matches [
    {:search=>"headers", :text=>'ActiveHTML'},
    {:version=>/ActiveHTML\/([^\s]+)/, :search=>"headers[server]"},
    {:version=>/seliSoft ActiveHTML\/([^\s]+)/, :search=>"headers[x-powered-by]"}
]
end
