Plugin.define do
name "IP-Logger-Pro"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The IP Logger PRO provides a straightforward and efficient way to record and analyze your website visitors completely."
website "http://www.debilsoft.de/"
dorks [
'"Logdaten - Bitte hier klicken." inurl:"iplog.php?action=show"'
]
matches [
{ :certainty=>75, :ghdb=>'"Logdaten - Bitte hier klicken." inurl:"iplog.php?action=show"' },
{ :version=>/<br \/><br \/>&nbsp;debilsoft IP-Logger PRO Version ([\d\.]{1,5}) is licensed to [^<]+<\/div><\/body><\/html>/ },
{ :text=>'<title>debilsoft IP-Logger PRO Besucherdaten</title>' },
]
end
