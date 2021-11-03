Plugin.define do
name "Mailman"
authors [
  "Tonmoy Saikia",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Mailman is free software for managing electronic mail discussion and e-newsletter lists. WEB:http://www.gnu.org/software/mailman/index.html"
dorks [
'inurl:mailman "Delivered by Mailman"'
]
matches [
{ :certainty=>25, :ghdb=>'inurl:mailman "Delivered by Mailman"'},
{ :regexp=>/<td><a[^>]+href="[^"]+\/listinfo\/[^"]+"><strong>[^<]+<\/strong><\/a><\/td>/ },
{ :version=>/<td><img src="[^"]+\/mailman.jpg" alt="Delivered by Mailman"[^>]+><br>version (\d.\d.[0-9a-z]+)/ },
{ :version=>/<td><a href="http:\/\/www.gnu.org\/software\/mailman\/index.html">Delivered by Mailman<br>version (\d.\d.[0-9a-z]+)<\/a>/ },
]
end
