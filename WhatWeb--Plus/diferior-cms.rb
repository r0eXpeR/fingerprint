Plugin.define do
name "Diferior-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Diferior is a multi-purpose content management system, meaning that it provides all the necessary tools to easily publish and organize your content."
website "http://diferior.com/"
dorks [
'"Powered by Diferior, Copyright"'
]
matches [
{ :text=>'&#8212; Powered by Diferior</title>' },
{ :regexp=>/<a href="http:\/\/diferior.com" rel="external_dif[^>]+>Powered by Diferior, Copyright &copy; 2007, 2008 Povilas Musteikis<\/a><br\/>/ },
]
end
