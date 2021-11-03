Plugin.define do
name "FCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Family Connections CMS (FCMS)"
website "https://www.familycms.com/index.php"
dorks [
'intitle:"powered by Family Connections"'
]
matches [
    {:regexp=>/- [pP]owered by Family Connections<\/title>/},
    {:text=>'<meta name="author" content="Ryan Haudenschilt"/>'},
    {:text=>'Powered by Family Connections'},
    {:text=>'content="Ryan Haudenschilt'},
    {:url=>'/images/tv_ico.gif', :md5=>'53a92a42e44173edd352456079a940d3'},
    {:version=>/- [pP]owered by Family Connections ([^\s^<]+)[\s]*<\/title>[\s]*(<meta|<link)/}
]
end
