Plugin.define do
name "Motorito"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Motorito"
website "http://www.motorito.com/"
dorks [
'inurl:mmod=staticContent'
]
matches [
{ :text=>'<!-- end META_TAGS subst -->' },
{ :text=>'<!-- CAL POSAR UN DISCRIMINADOR DE NAVEGADORS PER CARREGAR ELS ESTILS ADEQUATS -->' },
]
end
