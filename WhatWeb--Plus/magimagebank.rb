Plugin.define do
name "MagImageBank"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The MagImageBank is a easy to use and flexible web-based DAM (digital asset management) for managing images, videos and documents"
website "http://www.magimagebank.com/"
dorks [
'"Powered by MagImageBank" "info@magimagebank.com"'
]
matches [
{ :text=>'</div></div><div id="SiteBottom" class="fun"></div><div id=\'SiteFooter\'>' },
{ :regexp=>/<link href="\/imagebank\/stylesheets\/fancybox\.css\?[\d]+" media="screen" rel="Stylesheet" type="text\/css" \/>/ },
{ :regexp=>/Powered by MagImageBank | <a href="http:\/\/magimagebank.com\/">magimagebank.com<\/a> | <a href="mailto:info@magimagebank.com">info@magimagebank.com<\/a>/},
]
end
