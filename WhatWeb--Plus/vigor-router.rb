Plugin.define do
name "Vigor-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Vigor router"
website "http://www.draytek.com/user/PdInfoDetail.php?Id=20"
matches [
{ :search=>"headers[server]", :model=>/^(VigorAccess) Web Server$/ },
{ :search=>"headers[www-authenticate]", :model=>/^Basic realm="(Login to )?Vigor ([\d]+)"$/, :offset=>1 },
]
end
