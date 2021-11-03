Plugin.define do
name "phpRechnung"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpRechnung is easy-to-use Web-based multilingual accounting software"
website "http://www.loenshotel.de/phpRechnung/"
dorks [
'phpRechnung "Edy Corak . All rights reserved."'
]
matches [
{ :text=>"<a class='slink' title='phpInvoice Home' href='http://www.ecorak.de/phpRechnung/' target='_blank'>" },
{ :version=>/<title>phpRechnung ([^-]+) - Login<\/title>/ },
{ :version=>/<title>phpInvoice ([^-]+) - Login<\/title>/ },
]
end
