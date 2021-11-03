Plugin.define do
name "SlideShowPro-Director"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Content management and universal slideshow publishing for desktops, Apple iOS and Android."
website "http://slideshowpro.net/products/slideshowpro_director/"
dorks [
'intitle:"SlideShowPro Director" "Lost Username" "Password" "Sign in" "Remember me"'
]
matches [
{ :version=>/<div id="simple-footer">\s+<span>SlideShowPro Director ([^<]+)<\/span>/ },
{ :text=>'</div> <!--close login-container-->	</body>' },
]
end
