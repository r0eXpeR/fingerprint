Plugin.define do
name "DORG"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DORG is an Disc organization script which makes it easier for customers and businesses to find their software."
website "http://www.discorganizer.org/"
dorks [
'"Powered by DORG"'
]
matches [
    {:text=>'<meta name="description" content="this is the administration panel of the DORG system" />'},
    {:text=>'<p>Powered by <a href="http://www.discorganizer.org">DORG</a>'},
    {:text=>'<title>DORG - Disc Organization System</title>'},
    {:text=>'<title>DORG - admin panel</title>'},
    {:text=>'CONTENT="DORG'},
    {:text=>'DORG -'}
]
end
