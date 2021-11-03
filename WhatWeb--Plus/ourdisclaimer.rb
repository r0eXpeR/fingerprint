Plugin.define do
name "OurDisclaimer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "OurDisclaimer.com - Third party disclaimer service."
website "http://ourdisclaimer.com/"
matches [
{ :version=>/<a[^>]+href[\s]*=[\s]*"http:\/\/ourdisclaimer.com\/\?i=([^\"]+)/i },
{ :version=>/<iframe[^>]+src[\s]*=[\s]*"http:\/\/ourdisclaimer.com\/\?i=([^\"]+)/i },
]
end
