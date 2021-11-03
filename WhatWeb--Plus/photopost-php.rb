Plugin.define do
name "PhotoPost-PHP"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PhotoPost is photo sharing gallery software for your site that lets your users upload photos to galleries and to interact in photo discussions. Install it yourself, or let us get your gallery up and running in one day."
website "http://www.photopost.com/"
dorks [
'"powered by PhotoPost PHP"'
]
matches [
{ :text=>'<title>PhotoPost Administration Menu</title>' },
{ :text=>'<frame name="mainFrame"  src="adm-misc.php?admact=mainmenu" scrolling="yes" frameborder="0" marginwidth="0" marginheight="0" border="no" />' },
{ :text=>'Powered by: <a target="_blank" href="http://www.photopost.com">PhotoPost</a> PHP<br />' },
{ :text=>'Powered by: <a target="_blank" href="http://www.photopost.com">PhotoPost</a> PHP vB3 Enhanced<br />' },
{ :text=>' - Powered by PhotoPost</title>' },
]
end
