Plugin.define do
name "All-in-one-SEO-Pack"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "The all in one SEO pack automatically optimizes your WordPress blog for Search Engines (Search Engine Optimization)."
website "http://wordpress.org/extend/plugins/all-in-one-seo-pack/"
matches [
{ :text=>'<!-- /all in one seo pack -->' },
{ :version=>/<!-- All in One SEO Pack ([\d\.]+) by Michael Torbert of Semper Fi Web Design/ },
]
end
