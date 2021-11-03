Plugin.define do
name "Tiger-IP-Connect"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Tiger IP Connect - is a Windows based software solution to manage a single Nomadix powered Hot-Spot."
website "http://www.tigercomms.com/tiger-ip-connect-lite"
dorks [
'intitle:"Tiger IP Connect" intitle:Login "Login"'
]
matches [
{ :certainty=>75, :search=>"headers[location]", :regexp=>/^network\/index\.php$/ },
{ :version=>/<title>Tiger IP Connect ([^\s]+) -  Login<\/title>/ },
{ :text=>'<td align="center" bgcolor="#FFCC00"><b>Login is disabled from this IP address.</b></td>' },
{ :url=>"/include/tiger.css", :text=>'background-image:url(../images/tiger/subTabmidden.gif);' },
{ :text=>'<link rel="stylesheet" href="/include/tms.css">', :string=>"TigerTMS" },
{ :text=>'<link rel="stylesheet" href="/include/firedigit.css">', :string=>"Firedigit" },
]
end
