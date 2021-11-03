Plugin.define do
name "S-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "CMS"
website "http://www.matteoiammarrone.com/public/s-cms/"
matches [
{ :text=>'<p class="alignRight">Powered by S:CMS - Copyright ©' },
{ :text=>'<title>SCMS</title>' },
{ :text=>'<!-- Inizio righe di indicizzazione nei motori di ricerca -->' },
{ :version=>/Powered by <a href='http:\/\/www.matteoiammarrone.com\/public\/s-cms' target='_blank'>S-Cms ([\d\.]+)<\/a>/ },
]
end
