Plugin.define do
name "KMSoft-Guestbook"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Guestbook"
website "http://www.kmsoft.org/"
dorks [
'"KMSoft Guestbook" inurl:form.asp'
]
matches [
{ :version=>/<div id="footer">KMSoft Guestbook v ([\d\.]+) Powered by <a href="http:\/\/www.kmsoft.org[\/]*">KMSoft<\/a><\/div>/ },
{ :version=>/<title>KMSoft Guestbook v([\d\.]+)[^<]+<\/title>/ },
]
end
