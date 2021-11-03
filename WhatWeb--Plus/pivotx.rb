Plugin.define do
name "PivotX"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PivotX - blog software"
website "http://pivotx.net/"
dorks [
'inurl:"pivotx/ajaxhelper.php"'
]
matches [
{ :text=>'<!-- PivotX -->' },
{ :text=>'<script src="includes/js/pivotx.js" type="text/javascript"></script>' },
{ :text=>'<img src="templates_internal/assets/pivotx.png" alt="PivotX" /></a>' },
{ :version=>/<em>PivotX - ([^<]+)<\/em> &nbsp; - &nbsp; &copy; 20[\d]{2}/ },
{ :text=>'<meta name="generator" content="PivotX" />' },
{ :version=>/<meta name="generator" content="PivotX" \/><!-- version: PivotX - ([^\s]+) -->/ },
]
end
