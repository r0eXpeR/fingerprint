Plugin.define do
name "Batavi"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Batavi open source e-commerce"
website "http://www.batavi.org/"
dorks [
'intitle:"Batavi Administration Tool" "Log Into The Administration Tool"'
]
matches [
    {:search=>"headers", :text=>'Batavi'},
    {:search=>"headers[set-cookie]", :regexp=>/frontsid=[^;]+;/},
    {:search=>"headers[x-powered-by]", :regexp=>/Batavi e\-commerce/},
    {:text=>'<meta name="generator" content="Batavi.org - Open Source E-Commerce" />'},
    {:text=>'content="Batavi.org'},
    {:version=>/<meta name="Generator" content="Batavi ([^\}^>]+)" \/>/},
    {:version=>/<p align="center"><a href="http:\/\/www\.batavi\.org" target="_blank" class="poweredByButton"><span class="poweredBy">Powered By<\/span><span class="Batavi">Batavi ([^<]+)<\/span><\/a><\/p>/}
]
end
