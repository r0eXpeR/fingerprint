Plugin.define do
name "iHTML"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "iHTML is a server side internet/web programming and scripting language in used by thousands of sites worldwide to deliver cost effective dynamic database driven web sites."
website "http://www.ihtml.com/"
matches [
    {:search=>"headers", :text=>'iHTML'},
    {:version=>/ \(Using iHTML\/([^\)^\s]+)\)/, :search=>"headers[server]"},
    {:version=>/^iHTML\/([^\s]+)$/, :search=>"headers[x-powered-by]"}
]
end
