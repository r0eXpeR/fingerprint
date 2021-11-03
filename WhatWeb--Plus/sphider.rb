Plugin.define do
name "Sphider"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sphider is a lightweight web spider and search engine written in PHP, using MySQL as its back end database."
website "http://www.sphider.eu/"
dorks [
'intitle:"Sphider Admin Login" inurl:"admin" "Username" "Password"',
'intitle:"Sphider installation script" intext:"Sphider installation script" inurl:"install.php"'
]
matches [
{ :regexp=>/<html>[\s]+<head>[\s]+<title>[\s]+Sphider installation script\.[\s]+<\/title>[\s]+<LINK REL=STYLESHEET HREF="admin\.css" TYPE="text\/css">[\s]+<\/head>[\s]+<body>/ },
{ :regexp=>/<title>Sphider Admin Login<\/title>[\s]+<LINK REL=STYLESHEET HREF="admin\.css" TYPE="text\/css">[\s]+<\/head>/ },
]
end
