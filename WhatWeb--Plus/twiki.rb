Plugin.define do
name "TWiki"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A flexible, powerful, and easy to use enterprise wiki, enterprise collaboration platform, and web application platform."
website "http://www.twiki.org/"
matches [
    {:name=>'GHDB: "powered by twiki"',
:certainty=>75,
:ghdb=>'"powered by twiki"'},
    {:name=>'alternate powered by text',
:regexp=>/<span class="twikiRight"> This Wiki powered by TWiki <a href="http:\/\/twiki.org\/"><img src="[a-zA-Z0-9\.\-\\\/\+_]+" alt="This Wiki is powered by the TWiki collaboration platform" width="[0-9]+" height="[0-9]+" title="This wiki is powered by the TWiki collaboration platform" border="0" \/><\/a><\/span>/i
},
    {:name=>'default redirect page title',
:text=>'<title>Welcome to TWiki - A Web-based Collaboration Platform</title>'},
    {:name=>'powered by text',
:regexp=>/<span class="twikiRight"> <a href="http:\/\/twiki.org\/"><img src="[a-zA-Z0-9\.\-\\\/\+_]+" alt="This site is powered by the TWiki collaboration platform" width="[0-9]+" height="[0-9]+" title="This site is powered by the TWiki collaboration platform" border="0" \/><\/a><\/span>/i},
    {:regexp=>/<img [^>]*(?:title|alt)="This site is powered by the TWiki collaboration platform/},
    {:search=>'body', :regexp=>/(?:TWikiJavascripts|twikilib(?:\.min)?\.js)/}
]
passive do
        m=[]
        m << {:name=>"TWIKISID Cookie" } if @headers["set-cookie"] =~ /TWIKISID=[0-9a-z]{32}/
        m
end
end
