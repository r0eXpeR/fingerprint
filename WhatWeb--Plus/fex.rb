Plugin.define do
name "FEX"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "F*EX (Frams's Fast File EXchange) is a service that can be used to allow users anywhere on the Internet to exchange files of ANY size quickly and conveniently."
website "http://fex.rus.uni-stuttgart.de/fex.html"
dorks [
'intitle:"F*EX - File EXchange" "F*EX - Frams\' Fast File EXchange"'
]
matches [
    {:certainty=>75, :text=>"<h1>F*EX - Frams' Fast File EXchange"},
    {:regexp=>/<a href="mailto:[^"]+">fexmaster<\/a><\/address>/i},
    {:search=>"headers", :text=>'fexsrv'},
    {:search=>"headers[server]", :regexp=>/^fexsrv$/},
    {:text=>'<HEAD><TITLE>F*EX - File EXchange</TITLE></HEAD>'},
    {:text=>'HREF="mailto:fexmaster@ostc.de'},
    {:url=>"/logo.jpg", :md5=>"ad8a95bba8dd1a61d70bd38611bc2059"}
]
end
