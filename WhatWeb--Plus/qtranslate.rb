Plugin.define do
name "qTranslate"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "qTranslate Wordpress plugin"
website "http://www.qianqin.de/qtranslate/"
matches [
{ :search=>"headers[set-cookie]", :regexp=>/qtrans_cookie_test=[^\+]+\+Cookie\+Test;/ },
]
end
