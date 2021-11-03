Plugin.define do
name "JagoanStore-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "JagoanStore CMS"
website "http://www.jagoanstore.com/"
dorks [
'"Toko Online ini menggunakan JagoanStore CMS dari JagoanWeb Indonesia"'
]
matches [
{ :text=>'CMS <a style="color:#fff;font-size:11px;" href="http://www.jagoanstore.com/" target="_blank">Toko Online</a> by <a href="http://www.jagoanstore.com/" target="_blank"><img src="http://www.jagoanstore.com/jagstorecom-lil.png" border=0 align="absmiddle" /></a></div>\');' },
{ :string=>/<div class="copy">Copyright (20[\d]{2}) Toko Online ini menggunakan JagoanStore CMS dari JagoanWeb Indonesia<\/div>/ },
]
end
