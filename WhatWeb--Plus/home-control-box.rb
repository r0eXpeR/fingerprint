Plugin.define do
name "Home-Control-Box"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "The Home Control Box is a small, powerful computer that integrates the various sensors and electronic systems in the home into one single functional system."
website "http://www.homecontrolbox.com/"
matches [
    {:account=>/^Basic realm="Home Control Box Configuration \(hcb-([a-z]{3}-[\d]{4})\)"$/, :search=>"headers[www-authenticate]"},
    {:module=>/^hcb_web\/v[^\s]+ (BoxTalk\/[^\s]+) SWILL\/[^\s]+ \([^\)]+\)$/, :search=>"headers[server]"},
    {:module=>/^hcb_web\/v[^\s]+ BoxTalk\/[^\s]+ (SWILL\/[^\s]+) \([^\)]+\)$/, :search=>"headers[server]"},
    {:regexp=>/^hcb_web/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'hcb_web'},
    {:string=>"No Login Required", :text=>'<frame frameborder="0" name="MGUI" src="myhcb_gui.html" scrolling="no"'},
    {:version=>/^hcb_web\/v([^\s]+) BoxTalk\/[^\s]+ SWILL\/[^\s]+ \([^\)]+\)$/, :search=>"headers[server]"}
]
end
