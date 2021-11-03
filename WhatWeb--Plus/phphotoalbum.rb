Plugin.define do
name "phPhotoAlbum"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "PHP Photo Album"
website "http://www.phphq.net/?script=phPhotoAlbum"
dorks [
'"powered by PHPhotoalbum" intitle:My Picture Album"'
]
matches [
{ :text=>'<title>My Picture Album</title>', :certainty=>75 },
{ :version=>/<td align="right"><font style="font-face:Verdana; font-size:9; font-color:#000000;">Powered By: <a href="http:\/\/www.phphq.net\/\?script=phPhotoAlbum" target="_blank"><b>phPhotoAlbum v([\d\.]+)<\/b><\/a><\/font><\/td>/ },
]
end
