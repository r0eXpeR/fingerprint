Plugin.define do
name "MKPortal"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MKPortal blog and forum software - Homepage [offline] : http://www.mkportal.it/"
dorks [
'inurl:"index.php?ind=blog"'
]
matches [
{ :text=>'<meta name="generator" content="MKPortal" />' },
{ :text=>'|   Cascading Style Sheet for MKportal "Forum" Portal Template' },
{ :certainty=>25, :text=>'<!-- end close portal body -->' },
{ :version=>/<a style="text-decoration: none;" href="http:\/\/www.mkportal.it\/" target="_blank">MKPortal<\/a> ([^&^<]+)(<\/b>)? &copy;2003-20[\d]{2}/ },
]
end
