Plugin.define do
name "IBM-Internet-Connection-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "IBM Internet Connection Server - Homepage [offline] : http://www.ics.raleigh.ibm.com"
matches [
    {:search=>"headers", :text=>'IBM Internet Connection Server'},
    {:version=>/^IBM Internet Connection Server\/([^\s]+)$/, :search=>"headers[server]"}
]
end
