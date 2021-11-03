Plugin.define do
name "Inktomi-Search"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Inktomi Search engine"
website "http://www.inktomi.com/products/search/"
matches [
    {:search=>"headers", :text=>'Inktomi Search'},
    {:search=>"headers[server]", :version=>/^Inktomi Search ([^\s]+)$/},
    {:url=>"/util/badkey.html", :version=>/<font size="\+1"><b>License Key Problems<\/b><\/font><br>[\s]+<b>Inktomi Search ([^<^\s]+)<\/b><br>/}
]
end
