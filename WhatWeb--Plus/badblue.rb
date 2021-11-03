Plugin.define do
name "BadBlue"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "A free, very small Windows web server for sharing, publishing and serving files."
website "http://www.badblue.com/"
dorks [
'intitle:"BadBlue: the file-sharing web server anyone can use" -intitle'
]
matches [
    {:search=>"headers", :text=>'BadBlue'},
    {:version=>/^BadBlue\/([\d\.]+)$/, :search=>"headers[server]"}
]
end
