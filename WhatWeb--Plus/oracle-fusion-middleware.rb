Plugin.define do
name "Oracle-Fusion-Middleware"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Oracle Fusion Middleware (OFM)"
website "http://www.oracle.com/au/products/middleware/index.html"
matches [
{ :text=>'<title>Welcome to Oracle Fusion Middleware</title>' },
{ :text=>'<link href="css/fmw_bottom_area.css" rel="stylesheet" type="text/css">' },
{ :version=>/<div id="welcome_text">TO ORACLE<strong> FUSION MIDDLEWARE ([^\s^<]+)<\/strong> <\/div>/ },
{ :search=>"headers[server]", :regexp=>/^Oracle-Fusion-Middleware/ },
{ :search=>"headers[server]", :version=>/^Oracle-Fusion-Middleware\/([^\s]+ \([^\)]+\))/ },
]
end
