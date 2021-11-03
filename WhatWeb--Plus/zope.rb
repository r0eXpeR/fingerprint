Plugin.define do
name "Zope"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Zope is an open source web application server primarily written in the Python programming language. It features a transactional object database which can store not only content and custom data, but also dynamic HTML templates, scripts, a search engine, and relational database (RDBMS) connections and code."
website "http://www.zope.org/"
dorks [
'inurl:"HelpSys" intitle:"Zope Help System"'
]
matches [
    {:search=>"headers", :text=>'zope'},
    {:search=>"headers[server]", :module=>/Zope\/\([^,]*, ([^,]*)/},
    {:search=>"headers[server]", :string=>/Zope\/\([^,]*, [^,]*, ([^\)^\s]*)/},
    {:search=>"headers[server]", :version=>/Zope\/\(([^,]*)/},
    {:search=>'headers[server]', :regexp=>/^Zope./}
]
end
