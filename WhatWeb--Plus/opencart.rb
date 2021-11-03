Plugin.define do
name "OpenCart"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "OpenCart - Open Source Shopping Cart Solution"
website "http://www.opencart.com/"
dorks [
'intitle:"Administration" "Please enter your login details" "Username" "Password" "OpenCart"'
]
matches [
    {:regexp=>/<!--\s+OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation\./},
    {:regexp=>/<div id="powered">Powered By <a href="http:\/\/www\.opencart\.com"( title="OpenCart")?>OpenCart<\/a>/},
    {:text=>'/admin/index.php?route=common/login" method="post" enctype="multipart/form-data" id="form">'},
    {:text=>'Powered By OpenCart'},
    {:text=>'catalog/view/theme'},
    {:version=>/<div id="footer">\s*<a href="http:\/\/www\.opencart\.com">OpenCart<\/a> &copy; 2009(-20[\d]{2})? All Rights Reserved\.<br \/>Version ([^<]+)<\/div>/, :offset=>1},
    {:version=>/All Rights Reserved\.<br \/>OpenCart Version ([^<]+)\<\/div>/}
]
end
