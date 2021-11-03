Plugin.define do
name "phpVMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpVMS is apparently the most popular, free, virtual airline software, with support for various ACARS applications (kACARS, FSACARS, XAcars, FS Flight Keeper, and FSPassengers)"
website "http://www.phpvms.net/"
dorks [
'"powered by phpVMS" inurl:"index.php/registration"'
]
matches [
{ :certainty=>75, :text=>'<div class="jqmWindow" id="jqmdialog"></div>' },
{ :version=>/<a href="http:\/\/www\.phpvms\.net\/docs\/license">License & About<\/a> \|[\s]+Version ([^\s]+)[\s]+<\/div>/ },
{ :regexp=>/<!-- Please retain this!! It's part of the phpVMS license\. You must display a[\s]+"powered by phpVMS" somewhere on your page\. Thanks! -->/ },
{ :text=>'<a href="http://www.phpvms.net" target="_blank">powered by phpVMS</a>' },
]
end
