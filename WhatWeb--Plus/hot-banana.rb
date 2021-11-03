Plugin.define do
name "Hot-Banana"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Hot Banana is an award-winning, easy-to-use Web Content Management System (Web CMS) that helps marketers build and manage SEO-friendly Web sites that can be automated and optimized for maximum lead generation and conversion performance."
website "http://www.hotbanana.ca/"
dorks [
'"powered by hot banana"'
]
matches [
{ :certainty=>75, :ghdb=>'"Powered by Hot Banana"' },
{ :text=>'					var hbac_regFileTypes = new RegExp("\s*.(pdf|swf|gif|jpg|jpeg|jpe|xls|ppt|doc|mp3|txt|wav)");' },
{ :text=>'<div align="right"><img src="Images/hblogo.gif" width="49" height="28" border="0" alt="Powered By Hot Banana" /></div>' },
]
end
