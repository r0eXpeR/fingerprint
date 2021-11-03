Plugin.define do
name "DiBos"
authors [
  "Andrew Horton",

]
version "0.3"
description "DiBos security surveillance system"
website "http://www.boschsecurity.com/"
dorks [
'intitle:"DiBos - Login"'
]
matches [
    {:regexp=>/<title>DiBos - Login<\/title>/i},
    {:text=>'<h2>Object moved to <a href="/Error.aspx?error=wrongbrowser">here</a>.</h2>'},
    {:text=>'<link rel="STYLESHEET" type="text/css" href="style/bovisnt.css"></link>'},
    {:text=>'DiBos - Login'},
    {:text=>'style/bovisnt.css'}
]
end
