Plugin.define do
name "Allomani-E-Store"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "E-Store with shopping cart for online shopping websites , hosting & designing , Paid services , etc ... Requirements : PHP, MySQL, ionCube"
website "http://allomani.com/en/store_script.html"
dorks [
'"Programmed By Allomani"'
]
matches [
	{ :version=>/<meta name="generator" content="Allomani Store v([\d\.]+)" \/>/ },
]
end
