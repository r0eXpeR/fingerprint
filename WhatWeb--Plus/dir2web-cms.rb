Plugin.define do
name "dir2web-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "dir2web CMS"
website "http://www.dir2web.it/"
dorks [
'inurl:"index.php?wpid=homepage"'
]
matches [
{ :text=>'<link href="default/styles/d2w_object_page.css" rel="stylesheet" type="text/css" media="screen" /></head>' },
{ :text=>'<div class="d2w-back_link" id="start">' },
{ :text=>'<img src="_themes\/d2w\d\/images\/logo_hp\.jpg" title="dir2web \d logo" alt="dir2web \d logo"/>' },
{ :version=>/<a href="http:\/\/www\.dir2web\.it"><img style="border:0px" src="default\/d2w\d\.gif" alt="dir2web ([^\s]+) CMS" title="dir2web ([^\s]+) CMS"\/><\/a><br\/><br\/><\/div>/ },
]
end
