Plugin.define do
name "IBM-WebSphere"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "IBM WebSphere"
website "https://www-01.ibm.com/software/websphere/"
dorks [
'inurl:"snoop" intitle:"Snoop Servlet" "Request method"'
]
matches [
{ :search=>"headers[server]", :version=>/^WebSphere Application Server\/([^\s]+)$/ },
{ :text=>'<HTML><HEAD><TITLE>Snoop Servlet</TITLE></HEAD><BODY BGCOLOR="#FFFFEE">', :module=>"Snoop Servlet" },
]
end
