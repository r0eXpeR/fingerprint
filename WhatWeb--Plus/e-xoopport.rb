Plugin.define do
name "E-Xoopport"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "CMS"
website "http://www.e-xoopport.it/modules/news/"
dorks [
'"powered by E-Xoopport"'
]
matches [
    {:text=>'Powered by E-Xoopport'},
    {:text=>'content="E-Xoopport'},
    {:version=>/<div align='center'>Powered by E-Xoopport ([^&]+)&copy; 2004[\-0-9]{0,5} <a href='http:\/\/www.e-xoopport.it\/' target='_blank'>The E-Xoopport Project<\/a><\/div>/},
    {:version=>/<meta name="generator" content="E-Xoopport ([^"]+)">/}
]
end
