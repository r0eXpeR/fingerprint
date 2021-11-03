Plugin.define do
name "KaiBB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "KaiBB Free and Open Bulletin Board Software - Requires: PHP and MySQL"
website "http://www.kaibb.co.uk/"
dorks [
'"Powered by KaiBB"'
]
matches [
    {:text=>'<!-- THIS MUST REMAIN INTACT AND SHOWN ON ALL PAGES -->'},
    {:text=>'<meta name="Description" http-equiv="Description" content="Forum powered by KaiBB - Powered by KaiBB" />'},
    {:text=>'Powered by KaiBB'},
    {:text=>'content="Forum powered by KaiBB'},
    {:version=>/Powered by <a href="http:\/\/\www\.mi-dia\.co\.uk" class="normfont">KaiBB ([^\s^<]+)<\/a>/},
    {:version=>/Powered by <a href="http:\/\/www\.kaibb\.co\.uk" class="normfont">KaiBB ([^\s^<]+)<\/a>/}
]
end
