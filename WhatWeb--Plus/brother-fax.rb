Plugin.define do
name "Brother-Fax"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Brother fax web interface"
website "http://www.brother.com/"
dorks [
'intitle:"brother mfc" inurl:"/main/main.html"'
]
matches [
    {:certainty=>25, :search=>"headers[server]", :version=>/^[Dd]ebut\/([\d\.]+)$/},
    {:model=>/<TITLE>\nBrother (MFC-[\dA-Z]+)\n<\/TITLE>/},
    {:search=>"headers", :text=>'debut'},
    {:text=>'Brother MFC'}
]
end
