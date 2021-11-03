Plugin.define do
name "HttpFileServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "You can use HFS (HTTP File Server) to send and receive files. Access your remote files, over the network."
website "http://www.rejetto.com/hfs/"
dorks [
'"File List" "Folder archive" "HttpFileServer" "Servertime" "Uptime" "Build-time" intitle:HFS'
]
matches [
{ :version=>/<div id=footer>[\s]+<a href="http:\/\/www\.rejetto\.com\/hfs\/">HttpFileServer ([^<]+)<\/a>[\s]+<br \/>Servertime/ },
{ :version=>/^HFS (\d\.\d.+)$/, :search=>"headers[server]" },
{ :regexp=>/^HFS /, :search=>"headers[server]" },
]
end
