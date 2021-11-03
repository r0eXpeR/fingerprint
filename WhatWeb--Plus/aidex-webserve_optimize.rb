Plugin.define do
name "AIDeX-Webserver"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AIDeX Webserver - does not support CGI or PHP"
website "http://www.aidex.de/software/webserver/"
dorks [
'intitle:"Directory Listing" "Directory Listing" "Powered by AIDeX Webserver"'
]
matches [
    {:search=>"headers", :text=>'aidex'},
    {:search=>"headers[server]", :version=>/^aidex\/([^\s]+)/},
    {:text=>'<br><small>Powered by <a href="http://www.aidex.de/software/webserver/" target="_blank">AIDeX Webserver</a></small></div></div><br><br><br>'},
    {:text=>'http://www.aidex.de/")'}
]
end
