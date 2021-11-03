Plugin.define do
name "PHP-Shell"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "php remote shell and file explorer"
matches [
{ :ghdb=>'+filetype:php +HAXPLORER +"Server Files Browser" +Browsing +"Script Location"', :certainty=>75 },
{ :version=>/PHPShell by [a-zA-Z0-9]+ - Version ([0-9a-z\.]+)/ },
]
end
