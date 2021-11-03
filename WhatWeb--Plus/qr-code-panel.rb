Plugin.define do
name "QR-Code-Panel"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "QR-Code Panel for PHP-Fusion"
website "http://www.g0lgs.co.uk/downloads.php"
dorks [
'"QR-Code Panel" "by G0LGS"'
]
matches [
{ :version=>/<tr><td width='100%' align='center' class='small'>QR-Code Panel<a title='V[^\s^<]+ \([\d]{2}\/[\d]{2}\/[\d]{4}\)'> V([^\s^<]+)<\/a><br \/>/ },
{ :certainty=>75, :regexp=>/&copy; [\d]{4} by <a href='http:\/\/www\.g0lgs\.co\.uk\/downloads\.php'>G0LGS<\/a><\/td><\/tr>/ },
]
end
