Plugin.define do
name "Bulletlink-Newspaper-Template"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Ready-to-use online newspaper templates"
website "http://bulletlink.com/"
dorks [
'allinurl:target_form.asp?pform=',
'"powered by bulletlink.com"'
]
matches [
    {:certainty=>75, :text=>'<link rel="stylesheet" href="/ModalPopup/core-modalpopup.css" type="text/css">'},
    {:text=>'/ModalPopup/core-modalpopup.css'},
    {:text=>'<br><div style="width: px; margin-left: auto; margin-right: auto;"><br><center><a href="http://bulletlink.com" target=_blank><font size=1>{ powered by bulletlink.com }</font></a></center><br></div>'},
    {:text=>'<div class="copyright"><script type="text/javascript" language="JavaScript">GetCopyright();</script>&nbsp;&nbsp;&nbsp;<a class="copyright" href="/sitemap.asp">sitemap</a></div>'},
    {:text=>'powered by bulletlink'}
]
end
