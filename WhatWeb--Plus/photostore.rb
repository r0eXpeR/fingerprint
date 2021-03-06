Plugin.define do
name "PhotoStore"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PhotoStore allows you to setup a complete photo selling website on your server or hosting space and in just minutes you can start selling photos on your website."
website "http://www.ktools.net/photostore/sell-photos-online/"
dorks [
'"Powered By PhotoStore" "Sell Photos Online by Ktools.net LLC"'
]
matches [
{ :text=>'Powered By <a href="http://www.ktools.net/photostore/index.php" title="Sell your photos online with PhotoStore, online proofing and sales." target="_blank"><u>PhotoStore | Sell Photos Online</u></a> by <a href="http://www.ktools.net" title="Ktools LLC" target="_blank"><u>Ktools.net LLC</u></a>' },
{ :text=>'Powered By <a href="http://www.ktools.net/photoshow/index.php" title="Show your photos online with PhotoShow, an online photo gallery." target="_blank"><u>PhotoShow | Photo Gallery</u></a> by <a href="http://www.ktools.net" title="Ktools LLC" target="_blank"><u>Ktools.net LLC</u></a>' },
{ :text=>'<b>Search:</b> <input type="textbox" name="search" class="search_box">' },
{ :version=>/<td align="center" class="footer">PhotoStore Version[\s]+<b>([^<^\s]+)<\/b> Installed<\/td>/ },
{ :text=>'<form action="mgr_actions.php?pmode=login" name="login_form" method="post">' },
{ :text=>'<body bgcolor="#13387E" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" onLoad="document.login_form.username.focus();">' },
]
end
