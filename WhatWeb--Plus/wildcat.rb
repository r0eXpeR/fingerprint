Plugin.define do
name "Wildcat"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Wildcat! Interactive Net Server - includes and combines SSL (Secured Socket Layer), WEB, SMTP/POP3 (EMAIL), FTP, TELNET, RADIUS, NNTP (News) Server, PPP server, Terminal Server, direct modem dial up technology with a secured User, Mail and File Database"
website "http://www.santronics.com/index.php"
matches [
{ :search=>"headers[server]", :version=>/^[wW]ildcat\/v([^\s]+)/ },
{ :search=>"headers[x-powered-by]", :version=>/Wildcat.Net v([^\s]+)/ },
]
end
