Plugin.define do
name "GetSimple"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "GetSimple is an open source CMS that utilizes the speed and convenience of XML, a best-in-class UI and the easiest learning curve of any simple Content Management System out there."
website "http://get-simple.info/"
matches [
    {:text=>'Powered by GetSimple'},
    {:text=>'content="GetSimple'},
    {:version=>/	<meta name="generator" content="GetSimple \- ([\d\.\_A-Z]+)" \/>/},
    {:version=>/<a href="http:\/\/get-simple.info\/" title="Open Source and Free CMS" >Powered by GetSimple<\/a> Version ([\d\.\_A-Z]+)/},
    {:version=>/<a href="http:\/\/get-simple.info\/">Powered by GetSimple<\/a> Version ([\d\.\_A-Z]+)/}
]
end
