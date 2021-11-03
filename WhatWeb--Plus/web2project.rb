Plugin.define do
name "web2Project"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "web2Project is a Free Open Source business-oriented Project Management System (PMS)"
website "http://web2project.net/"
dorks [
'"Fatal Error. You haven\'t created a config file yet." "Click Here To Start Installation and Create One! (forwarded in 5 sec.)"'
]
matches [
{ :text=>'<title>web2Project Development :: web2Project Login</title>' },
{ :text=>"</head><body>Fatal Error. You haven't created a config file yet.<br/><a href=" },
{ :certainty=>25, :version=>/<meta name="Version" content="([^"^\s]+)" \/>/ },
{ :search=>"headers[set-cookie]", :regexp=>/web2project=[^;]+;/ },
]
end
