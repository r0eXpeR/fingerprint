Plugin.define do
name "Edito-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Edito CMS [Polish]"
website "http://www.edito.pl/"
matches [
    {:regexp=>/<meta name="(g|G)enerator" content="(E|e)dito( CMS)? - www\.edito\.pl"[\s]*\/?>/},
    {:regexp=>/Powered by[\s]*:?[\s]+<a[^>]+href="http:\/\/www.edito.pl[\/]?"[^>]+title="Edito CMS"[^>]*>/i },
    {:text=>'content="edito'},
    {:text=>'title="CMS" href="http://www.edito.pl/'}
]
end
