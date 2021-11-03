Plugin.define do
name "iScripts-MultiCart"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "iScripts MultiCart is a multi vendor shopping cart with a single backend."
website "http://www.iscripts.com/multicart/"
dorks [
'"powered by iScripts MultiCart"'
]
matches [
    {:regexp=>/Powered by <a href="http:\/\/iscripts.com\/multicart"[\ target="_blank"]*><font color="#[a-zA-Z0-9]{6}"><b>iScripts Multicart<\/b><\/font><\/a>. A premium product from <a href="http:\/\/www.iscripts.com" class="" target="_blank"><font color="#[a-zA-Z0-9]{6}"><b>iScripts.com<\/b><\/font><\/a><\/div>/},

    {:text=>'Powered by <a href="http://iscripts.com/multicart'}
]
end
