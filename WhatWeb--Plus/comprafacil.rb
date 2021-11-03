Plugin.define do
name "Comprafacil"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Web shop app [Brazilian]"
website "http://www.comprafacil.com.br/"
dorks [
'inurl:"viewSection.jsf" ext:jsf'
]
matches [
{ :text=>'<a id="seloPowered" href="http://www.comprafacil.com.br"><img alt="Powered by Comprafacil" src="' },
{ :text=>'<meta name="author"      content="HERMES SA" />' },
{ :text=>'<meta name="author" content="HERMES SA" />' },
]
end
