Plugin.define do
name "Namazu"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Namazu is a full-text search engine intended for easy use. Not only does it work as a small or medium scale Web search engine, but also as a personal search system for email or other files."
website "http://www.namazu.org/"
dorks [
'"powered by Namazu"'
]
matches [
{ :regexp=>/This search system is powered by[\s]+<strong><a href="http:\/\/www\.namazu\.org\/">Namazu<\/a><\/strong>/ },
{ :regexp=>/Powered by <a href="http:\/\/www\.namazu\.(org|cc)\/[^"]*" target="_blank">(N|n)amazu<\/a>/ },
{ :regexp=>/<p><strong> Total <!-- HIT -->[\d]+<!-- HIT --> documents matching your query.<\/strong><\/p>/ },
{ :version=>/<strong><a href="http:\/\/www\.namazu\.org\/">Namazu<\/a> <!-- VERSION --> v([\d\.]+) <!-- VERSION --><\/strong>/i },
{ :version=>/This search system is powered by <a href="http:\/\/www\.namazu\.org\/">Namazu<\/a> <!-- VERSION --> v([\d\.]+) <!-- VERSION --><\/p>/i },
]
end
