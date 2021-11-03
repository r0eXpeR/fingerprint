Plugin.define do
name "CuteFlow"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CuteFlow - web-based workflow management"
website "http://sourceforge.net/projects/cuteflow/"
dorks [
'intitle:"CuteFlow" "CuteFlow - Document circulation system" "Login" "Username" "Password" "Language"'
]
matches [
{ :version=>/<a href="http:\/\/cuteflow\.org" target="_blank"><img src="images\/cuteflow_logo_small\.png" border="0"\s?\/><\/a><br>\s+<strong style="font-size:8pt;font-weight:normal">Version ([^\s^<]+)<\/strong><br>/ },
{ :search=>"headers[set-cookie]", :regexp=>/^strMyLanguage=/ },
]
end
