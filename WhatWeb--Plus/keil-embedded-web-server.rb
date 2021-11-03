Plugin.define do
name "Keil-Embedded-WEB-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Keil Embedded WEB Server"
website "http://www.keil.com/"
matches [
    {:regexp=>/^Keil-EWEB/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'Keil-EWEB'},
    {:text=>'<head><title>Keil Embedded WEB Server</title></head><body><h2>HTTP 1.0 401 Error. Unauthorized Access</h2>You are not authorized to access this server.<hr>'},
    {:version=>/^Keil-EWEB\/([^\s]+)$/, :search=>"headers[server]"}
]
end
