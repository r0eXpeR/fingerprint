Plugin.define do
name "AM4SS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Advanced Management For Services Sites (AM4SS)"
website "http://am4ss.org/"
dorks [
'intitle:"Powered by AM4SS"'
]
matches [
    {:regexp=>/<link rel="stylesheet" type="text\/css" href="templates\/[^\/]+\/am4ss\.css" \/>/},
    {:text=>'<!-- Header end and right block start -->'},
    {:text=>'Powered By <a href="http://am4ss.com"><font color="#FF000">AM4SS</font></a>'},
    {:text=>'Powered by am4ss'},
    {:text=>'am4ss.css'},
    {:version=>/<meta name="copyright" content="Powered by am4ss ([^\s]+) (Programmed By|programming by) Mohammed Cherkaoui" \/>/}
]
end
