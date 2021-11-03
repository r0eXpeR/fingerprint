Plugin.define do
name "AvantFAX"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "AvantFAX is a web application for managing faxes on HylaFAX fax servers."
website "http://avantfax.com/"
dorks [
'"avantfax login" "Enter your username and password to access the fax interface."'
]
matches [
    {:search=>"headers[set-cookie]", :regexp=>/AvantFAX=[a-z\d]{26}; path=\//},
    {:text=>'</label><br /><br /><input type="password" name="password" id="password" style="width: 12em" maxlength="15" /></p><br />'},
    {:text=>'<meta name="description" content="Web 2.0 HylaFAX management" />'},
    {:text=>'content="Web 2.0 HylaFAX'},
    {:text=>'images/avantfax-big.png'},
    {:version=>/<p><a href="http:\/\/www\.avantfax\.com" target="_blank"><img src="images\/avantfax-big\.png" border="0" alt="AvantFAX" \/><\/a><\/p>[\s]+<p align="center">([^\s^<]+)<\/p>/}
]
end
