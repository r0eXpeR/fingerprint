Plugin.define do
name "Asterisk"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Asterisk - communications server software. Asterisk powers IP PBXs, VoIP gateways, call center ACDs and IVR systems."
website "https://www.asterisk.org/asterisk"
dorks [
'intitle:"Asterisk Configuration GUI" "Asterisk Configuration Panel - Please click on a panel to manage related features"'
]
matches [
    {:regexp=>/<!--[\s]+\* Asterisk-GUI -[\s]+an Asterisk configuration interface/},
    {:search=>"headers", :text=>'Asterisk'},
    {:search=>"headers[server]", :regexp=>/^Asterisk\//},
    {:search=>"headers[server]", :version=>/^Asterisk\/(.+)$/},
    {:text=>'<link href="stylesheets/cfgbasic.css" media="all" rel="Stylesheet" type="text/css" />'},
    {:text=>'asterisk_rawmanPath'},
    {:url=>"/static/config/index.html", :text=>'<div id="ACTIVE_CONTENT"><noscript>You need to enable Javascript in your browser !!</noscript></div>'},
    {:url=>"/static/config/js/astman.js", :module=>/		version : '([^']+)' \/\/ gui version/},
    {:url=>"/static/index.html", :regexp=>/Your browser should automatically go to the configuration page\.[\s]+<br>[\s]+Or you can <a href="config\/cfgbasic\.html">click here<\/a>[\s]+<br>/}
]
end
