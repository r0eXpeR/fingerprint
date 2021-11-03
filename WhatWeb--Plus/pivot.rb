Plugin.define do
name "Pivot"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Pivot is a web-based tool to help you maintain dynamic sites, like weblogs or online journals."
website "http://www.pivotlog.net/"
dorks [
'"Set up the Administrator User" "Username" "Password (confirm)" "confirm" "Email" "Nickname"'
]
matches [
{ :certainty=>25, :text=>"<!-- Includes for Thickbox script -->" },
{ :text=>'<title>Pivot &#187; setup</title>' },
{ :text=>'<td width=\'75%\'><input type="text" name="sitename" value="Pivot Powered" size="40" class="input" /></td>' },
{ :version=>/<a href="http:\/\/www\.pivotlog\.net\/\?ver=Pivot[^"]+" target="_blank" title="Pivot - ([^:]+): '[^']+'"><img[^>]+alt="Pivot - [^"]+" \/><\/a>/ },
]
end
