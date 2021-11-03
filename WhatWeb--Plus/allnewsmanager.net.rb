Plugin.define do
name "AllNewsManager_NET"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AllNewsManager.NET is a free news/article management system for ASP.NET sites."
website "http://www.allnewsmanager.net/allnewsmanager/homepage.aspx"
dorks [
'"Powered by AllNewsManager.NET"'
]
matches [
{ :regexp=>/(kujeme|Powered by) <a id="[^"]+" href="http:\/\/www.allnewsmanager.net">AllNewsManager.NET<\/a>/ },
]
end
