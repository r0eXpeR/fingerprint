Plugin.define do
name "PhpMesFilms"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Film database powered by PHP. Website used to be http://phpmesfilms.dyndns.org/"
dorks [
'"powered by PhpMesFilms"'
]
matches [
{ :text=>'		<title>PhpMesFilms - Administration</title>' },
{ :text=>'		<title>PhpMesFilms - Liste</title>' },
{ :text=>'		<title>PhpMesFilms - Fiche film</title>' },
{ :text=>'				powered by <a href="http://phpmesfilms.dyndns.org/">PhpMesFilms</a>' },
]
end
