Plugin.define do
name "eSyndiCat"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "eSyndiCat is a professional, affordable directory software solution."
website "http://www.esyndicat.com/"
dorks [
'"Powered by eSyndiCat Web Directory"'
]
matches [
    {:regexp=>/<div class="copyright">&copy; [0-9]{4}[\-0-9]{0,5} Powered by <a href="http:\/\/www.esyndicat.com\/">eSyndiCat[^<]{0,5} Directory [^<]{5,8}<\/a><\/div>/},
    {:regexp=>/^eSyndiCat/, :search=>'body'},
    {:regexp=>/^eSyndiCat/, :search=>'headers[x-drectory-script]'},
    {:text=>'<title>Login To eSyndiCat Admin Panel</title>'},
    {:text=>'content="eSyndiCat'},
    {:version=>/<meta name="generator" content="eSyndiCat Web Directory Software ([\d\.]+)" \/>/},
    {:version=>/Powered by <a href="http:\/\/www.esyndicat.com\/">eSyndiCat Pro v([\d\.]+)<\/a><br \/>/},
    {:version=>/Powered by <a href="http:\/\/www.esyndicat.com\/">eSyndiCat<\/a> Version ([\d\.]+)<br \/>/}
]
end
