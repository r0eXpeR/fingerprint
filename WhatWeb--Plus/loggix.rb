Plugin.define do
name "Loggix"
authors [
  "Brendan Coles <bcoles at gmail dot com>", 

]
version "0.2"
description "Loggix is a really simple, lightweight PHP and SQlite driven weblog/cms engine."
website "http://loggix.gotdns.org/"
dorks [
'"Powered by Loggix"'
]
matches [
{ :text=>'<meta name="generator" content="Loggix" />' },
{ :version=>/Powered by <a href="http:\/\/loggix.gotdns.org">Loggix<\/a> ver.([\d\.]+)<\/address>/ },
]
end
