Plugin.define do
name "KSearch"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "KSearch is the easiest website search engine to integrate, implement and use. KSearch is fully customizable - you can add or remove any features you want, without permission. KSearch is Open Source Software."
website "http://www.kscripts.com/"
dorks [
'"Powered by KSearch" inurl:ksearch.cgi filetype:cgi'
]
matches [
{ :ghdb=>'"Powered by KSearch" inurl:ksearch.cgi filetype:cgi' },
{ :version=>/Powered by[\s]+<a[^>]+href="http:\/\/www\.kscripts\.com\/(scripts\.html#ksearch)?"[^>]*>KSearch[\s]+([\d\.]+[a-z]?)[\s]*<\/a>/, :offset=>1 },
{ :regexp=>/Powered by[\s]+<a[^>]+href="http:\/\/www\.kscripts\.com\/(scripts\.html#ksearch)?"[^>]*>KSearch<\/a>/ },
]
end
