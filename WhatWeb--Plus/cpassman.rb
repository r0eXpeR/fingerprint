Plugin.define do
name "cPassMan"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "cPassMan is a Passwords Manager dedicated for managing passwords in a collaborative way. It is especially designed to provide passwords access security for allowed people."
website "http://www.cpassman.org/"
dorks [
'intitle:"Collaborative Passwords Manager"'
]
matches [
    {:text=>'<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/3.0/" title="Collaborative Passwords Manager by Nils Laumaill&#233; is licensed under a Creative Commons Attribution-Noncommercial-No Derivative Works 3.0 License" target="_blank">'},
    {:text=>'<title>Collaborative Passwords Manager</title>'},
    {:text=>'Collaborative Passwords Manager'},
    {:version=>/<a href="http:\/\/cpassman.org[\/]?" target="_blank">cPassMan<\/a> ([^\ ]+)/}
]
end
