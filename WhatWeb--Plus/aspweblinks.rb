Plugin.define do
name "aspWebLinks"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Web app for categorizing links"
website "http://www.fullrevolution.com/"
dorks [
'"powered by aspWebLinks"'
]
matches [
{ :version=>/Powered By aspWebLinks ([\d\.]+) from <A[^>]*HREF=["']http:\/\/www.fullrevolution.com[^>]*>Full Revolution, Inc.<\/A>/ },
{ :version=>/<A[^>]*HREF=["']http:\/\/www.fullrevolution.com[^>]*>Powered By aspWebLinks ([\d\.]+)<\/A>/ },
{ :version=>/<title>aspWebLinks ([\d\.]+)<\/title>/ },
]
end
