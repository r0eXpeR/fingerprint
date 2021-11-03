Plugin.define do
name "FestOS" 
authors [
	"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "FestOS is web-based arts-n-crafts festival management software"
website "http://festengine.org/"
dorks [
'"powered by FestOS"'
]
matches [
    {:regexp=>/Powered by[\ FestOS,]* <a href="http:\/\/[festengine.org\/|www.festengine.org\/|skypanther.com\/festos.php]+" title="FestOS, [the\ festival\ engine|the\ Festival\ Engine|the\ web\-based\ festival\ manager]+"[\ target="_blank"]*>[FestOS|FestOS&trade;|www.festengine.org]+<\/a>/},
    {:text=>'	<meta name="author" content="FestOS by Skypanther Studios">'},
    {:text=>'	<meta name="author" content="Skypanther Studios">', :certainty=>75 },
    {:text=>'css/festos.css'},
    {:text=>'title="FestOS'}
]
end
