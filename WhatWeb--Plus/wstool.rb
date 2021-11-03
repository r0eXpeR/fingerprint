Plugin.define do
name "WSTOOL"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WSTOOL is OS-independence Web vulnerability scanner"
website "http://wstool.sourceforge.net/"
dorks [
' intitle:"Server Error & SQL Injection Sacnner" "Server info" "Domain or IP"'
]
matches [
{ :version=>/<a href="http:\/\/sourceforge\.net\/projects\/wstool" target="_blank">Server Error & SQL Injection Sacnner \(Ver ([^\s^\)]+)\)<\/a>/ },
{ :version=>/<title>Server Error & SQL Injection Sacnner \(Ver ([^\s^\)]+)\)<\/title>/ },
]
end
