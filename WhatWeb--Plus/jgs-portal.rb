Plugin.define do
name "JGS-Portal"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "CMS"
website "http://www.jgs-xa.de"
dorks [
'"Powered by JGS-Portal Version"'
]
matches [
    {:certainty=>75, :ghdb=>'"Powered by JGS-Portal Version"'},
    {:text=>'Powered by <b>JGS-Portal Version'},
    {:text=>'href="jgs_portal_box.php?id='},
    {:version=>/Powered by <b>JGS-Portal Version ([\d\.]+)<\/b> &copy; /}
]
end
