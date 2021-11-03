Plugin.define do
name "Redaxscript"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Redaxscript is a free, PHP and MySQL driven website engine for small business and private websites. It's ultra lightweight, simple and customizable."
website "http://redaxscript.com/"
dorks [
'"Powered by Redaxscript"'
]
matches [
    {:offset=>1, :regexp=>/^Redaxscript ([\d\.]+)/, :search=>'body'},
    {:text=>'Powered by <a href="http://redaxscript.com">Redaxscript</a>'},
    {:version=>/<meta name="generator" content="Redaxscript ([^\s^"]+)" \/>/},
    {:version=>/Powered by <a href="http:\/\/redaxscript\.com" title="Redaxscript">Redaxscript<\/a> ([^\s^<]+)</}
]
end
