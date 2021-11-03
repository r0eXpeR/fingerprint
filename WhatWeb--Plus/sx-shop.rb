Plugin.define do
name "sX-Shop"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP powered Shopping cart"
website "http://www.source-worx.de/"
matches [
{ :regexp=>/<a href="http:\/\/www.source-worx.de[^>]+>powered[\s]+by sX-Shop<\/a>/ },
{ :text=>'<meta name="author" content="Source WorX - Software Development">' },
{ :text=>'alert("Ihr Suchbegriff muss mind. aus 3 Zeichen bestehen.");' },
]
end
