Plugin.define do
name "pragmaMx"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "pragmaMx - CMS"
website "http://www.pragmamx.org/"
dorks [
'"Diese Webseite basiert auf pragmaMx"'
]
matches [
{ :text=>'<!-- COPYRIGHT www.pragmamx.ca / Ne touchez pas / Do not touch -->' },
{ :version=>/<meta name="generator" content="pragmaMx ([^\s]+) - by http:\/\/pragmaMx\.org" \/>/ },
{ :module=>/<!-- (pmx-templatesystem v[^\s^\/]+)\/20[\d]{2}-[\d]{2}-[\d]{2} -->/ },
{ :version=>/<p>Diese Webseite basiert auf pragmaMx ([^\s]+)\.<\/p>/ },
]
end
