Plugin.define do
name "DUgallery"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "DUgallery - PHP powered photo gallery."
website "http://www.duware.com/"
dorks [
'ext:asp inurl:DUgallery intitle:"3.0"'
]
matches [
    {:ghdb=>'ext:asp inurl:DUgallery intitle:"3.0"', :version=>"3.0", :certainty=>75},
    {:regexp=>/<title>DUgallery[^<]*<\/title>/},
    {:text=>'<img src="assets/title.gif" alt="Powered by DUportal" width="269" height="62" border="0">'},
    {:text=>'DUgallery'},
    {:text=>'Powered by DUportal'},
    {:version=>/<title>DUgallery ([\d\.]+)<\/title>/}
]
end
