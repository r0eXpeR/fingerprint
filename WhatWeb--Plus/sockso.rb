Plugin.define do
name "Sockso"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sockso is a free, open-source, personal music host server"
website "http://sockso.pu-gh.com/"
dorks [
'"Login" intext:"If you\'ve created an account you can put your info into the form below to login."'
]
matches [
{ :search=>"headers[server]", :regexp=>/^Sockso$/ },
{ :version=>/<p id="legal">[\s]+<strong>Sockso<\/strong>[\s]+v([^<]+)<br \/>[\s]+&copy; 20[\d]{2}/ },
]
end
