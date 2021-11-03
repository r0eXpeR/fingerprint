Plugin.define do
name "Post-Revolution"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Post Revolution - CMS"
website "http://postrev.com.ar/"
dorks [
'"Powered by Post Revolution"',
'inurl:verpost.php?id_noticia'
]
matches [
{ :text=>'Powered by <a href="http://www.postrev.com.ar/">Post Revolution</a>' },
]
end
