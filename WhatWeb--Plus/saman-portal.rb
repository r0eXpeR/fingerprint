Plugin.define do
name "Saman-Portal"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Saman Portal"
website "http://www.sis-eg.com/"
dorks [
'inurl:sismodule=user'
]
matches [
{ :text=>'<meta name="Generator" content="Saman Information Structure" />' },
{ :version=>/<script  type="text\/javascript" language="JavaScript" src="\/portlets\/sisRapid\/dream\/libs\/(V[\d\.]+)\/core\/sisValidationAPI\.js">/ },
{ :regexp=>/<script  type="text\/javascript" language="JavaScript">[\s]+var sisTHEMEPATH_HTTP = "/ },
{ :search=>"headers[server]", :regexp=>/sisRapid Framework/ },
{ :search=>"headers[set-cookie]", :regexp=>/SAMANPORTALSID=[^;]+;/ },
]
end
