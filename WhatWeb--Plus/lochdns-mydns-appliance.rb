Plugin.define do
name "lochDNS-MyDNS-Appliance"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "lochDNS MyDNS Appliance provides a web-based user interface for appliance administration."
website "http://wiki.rpath.com/wiki/Appliance:LochDNS"
dorks [
'"Manage lochDNS system with rPath Appliance Agent"'
]
matches [
{ :text=>'<li><a href="/mydnsconfig/index.htm">Configure MyDNS</a>' },
{ :text=>'<body bgcolor="#FFFFFF" leftmargin=0 topmargin=0 marginwidth=0 marginheight=0 onLoad="breakout()">' },
{ :version=>/<div id="appliance-name">lochDNS MyDNS Appliance<\/div>\s+<div id="appliance-version">\s+Version ([^\s^<]+)<\/div>/ },
{ :module=>/<div class="hidden">\s+(rPath Platform Agent [^\s]+)\s+<\/div>/ },
]
end
