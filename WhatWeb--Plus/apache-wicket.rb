Plugin.define do
name "Apache-Wicket"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Apache Wicket, commonly referred to as Wicket, is a lightweight component-based web application framework for the Java programming language"
website "http://wicket.apache.org/"
dorks [
'inurl:"wicket:bookmarkablePage"'
]
matches [
    {:ghdb=>'inurl:"wicket:bookmarkablePage=:"'},
    {:name=>'Wicket ID scheme',
 :certainty=>75,
 :regexp=>/ wicket:id="[^"]*"/},
    {:name=>'Wicket Resource scheme',
 :certainty=>25,
 :regexp=>/<[^=]+[ ]?=[ ]?['"]?wicket\/[^\/]+\/org\.apache\.wicket\./},
    {:name=>'XMLNS data',
 :regexp=>/xmlns:wicket="(http:\/\/wicket\.sourceforge\.net\/|http:\/\/wicket\.apache\.org\/)">/},
    {:text=>'/org.apache.wicket.'},
    {:text=>'xmlns:wicket='}
]
end
