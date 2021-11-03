Plugin.define do
name "InterRed"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "InterRed GmbH is a leading technology provider of content management systems (CMS), Knowledge Retrieval (KM), personalization of web sites, live reporting (website statistics) to use analysis of websites and offers print solutions for catalogs, magazines, newspapers Web-to-print, publishing houses."
website "http://www.interred.de/"
matches [
    {:text=>'Created with InterRed'},
    {:text=>'content="InterRed'},
    {:version=>/<!-- Created with InterRed V([^,]+), http:\/\/www\.interred\.de\/, by InterRed GmbH -->/},
    {:version=>/<meta name="(generator|GENERATOR)" content="InterRed V([^,]+), http:\/\/www\.interred\.de\/, InterRed GmbH"( \/)?>/, :offset=>1}
]
end
