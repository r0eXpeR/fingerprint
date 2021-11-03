Plugin.define do
name "Gallery"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Photo gallery - Requires PHP and MySQL"
website "http://gallery.menalto.com/"
dorks [
'187 for inurl:"/index.php/login/ajax" "Login" "Username" "Password" "Forgot your password"'
]
matches [
    {:certainty=>75, :text=>'<title>Gallery 3 Installer</title>'},
    {:filepath=>/We've found a place to store your photos:\s+<code class="location">([^<]+)<\/code>/},
    {:offset=>1, :regexp=>/<a href="http:..gallery\.sourceforge\.net"><img[^>]+Powered by Gallery\s*(?:(?:v|Version)\s*([0-9.]+))?/},
    {:regexp=>/<div id="gsNavBar" class="gcBorder1">/},
    {:text=>'/gallery/images/gallery.png'},
    {:text=>'<a href="#" id="g-password-reset" class="g-right g-text-small">Forgot your password?</a>'},
    {:text=>'Gallery 3 Installer'},
    {:version=>/<li class="(g-)?first">Powered by <a href="http:\/\/gallery\.menalto\.com">(<bdo dir="ltr">)?Gallery ([^<]+)(<\/bdo>)?<\/a><\/li>/, :offset=>2}
]
end
