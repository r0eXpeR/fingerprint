Plugin.define do
name "Akiva-WebBoard"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Akiva WebBoard - Online Communities and Enterprise Collaboration"
website "http://www.akiva.com/default.asp?l=1&id=8"
dorks [
'"Powered by WebBoard 8" "Log In Options" Username" "Password"'
]
matches [
    {:search=>"headers", :text=>'webboard='},
    {:text=>'<!-- --- AKIVA COPYRIGHT NOTICE --- -->'},
    {:text=>'<!-- Under the terms of the WebBoard License Agreement -->'},
    {:text=>'<!-- wbmain 8/22/2005 11:11AM -->'},
    {:text=>'<img src="images/branding-bottom.gif" width="46" height="44" alt="Powered by WebBoard">'},
    {:text=>'Powered by WebBoard'},
    {:version=>/<td class="botBrandingLeft"  nowrap >Powered by <a href="http:\/\/get\.webboard\.com\?pid=WB80&sid=9999999999999" target="_blank" class="topicsSmallLink">WebBoard ([\d])<\/a><br>&copy;20[\d]{2} Akiva Corporation/}
]
end
