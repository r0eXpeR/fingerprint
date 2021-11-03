Plugin.define do
name "Isolsoft-Support-Center"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Support Center is a fully automated Help Desk solution."
website "http://www.isolsoft.com/"
dorks [
'"Powered by: Support Center"'
]
matches [
    {:text=>'<!-- Copyright Line: Unauthorized removal can void license -->'},
    {:text=>'<strong><font color="#FF0000">Warning! This heldesk requires a browser with javascript '},
    {:text=>'Powered by: Support Center'},
    {:version=>/<p align="center"><font size="1">Powered by: Support Center v([^<^\s]+)<br>/}
]
end
