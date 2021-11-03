Plugin.define do
name "i-Catcher-Console"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "i-Catcher is a Digital CCTV system for security, surveillance and remote monitoring applications."
website "http://www.icode.co.uk/icatcher/"
matches [
    {:regexp=>/     i-Catcher Console is Copyright [\d]{4}-[\d]{4} <a[^>]+href="http:\/\/www.icode.co.uk\/">iCode Systems<\/a>./},
    {:search=>"headers", :text=>'i-Catcher'},
    {:text=>'   // These vars will be filled in by i-Catcher Console'},
    {:text=>' <title>i-Catcher Console - Live view</title>'},
    {:text=>'by i-Catcher Console'},
    {:version=>/     i-Catcher Console ([\d\.]+) is Copyright [\d]{4}-[\d]{4} <a class="footer" href="http:\/\/www.icode.co.uk\/">iCode Systems<\/a>./}
]
end
