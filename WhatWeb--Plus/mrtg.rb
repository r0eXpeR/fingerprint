Plugin.define do
name "MRTG"
authors [
  "Aung Khant <http://yehg.net/>", 

  "Andrew Horton", 

]
version "0.2"
description "MRTG - Multi Router Traffic Grapher - http://oss.oetiker.ch/mrtg/"
matches [
    {:name=>"Logo image", :url=>"/mrtg-l.png", :md5=>"241244d0d8845dcad7e891e84e79d63f"},
    {:name=>"Logo in footer", :regexp=>/HREF="http:\/\/oss.oetiker.ch\/mrtg\/"><IMG[\s]*BORDER=0 SRC="mrtg-l.png"/mi},
    {:name=>"Logo in footer2", :regexp=>/HREF="http:\/\/www.ee.ethz.ch\/~oetiker\/webtools\/mrtg\/">.*src=mrtg-l.png alt=MRTG/mi},
    {:name=>"Title", :regexp=>/<TITLE>MRTG Index Page<\/TITLE>/i},
    {:text=>'Command line is easier to read using "View Page Properties" of your browser'},
    {:text=>'MRTG Index Page'},
    {:text=>'commandline was: indexmaker'},
    {:version=>/<title>MRTG Index Page.*version ([^<]+)<\/font><\/td>/mi}
]
end
