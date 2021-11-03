Plugin.define do
name "Site4"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Site4 is a danish CMS system for webshops and homepages."
website "http://www.Site4.dk/"
matches [
{ :path=>"/error.asp", :text=>'<title>SITE4.dk Site4 Setup Error..</title>' },
{ :text=>'<img src="http://www.site4.dk/images/site4logo.jpg">
' },
{ :text=>'<div class="caption" align="center"><b>A Site4 event or error occured..</b></div></td>' },
{ :text=>'To read more about SITE4.dk please <a class="smalltext" style="text-decoration:none;" href="http://www.site4.dk"><b>click here</b></a>' },
]
end
