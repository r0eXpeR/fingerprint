Plugin.define do
name "phpPgAdmin"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpPgAdmin is a web-based administration tool for PostgreSQL. It is perfect for PostgreSQL DBAs, newbies and hosting services"
website "http://phppgadmin.sourceforge.net/"
dorks [
'inurl:"phppgadmin/intro.php"'
]
matches [
    {:name=>"PPA_ID Cookie", :search=>"headers[set-cookie]", :regexp=>/^PPA_ID=[a-z0-9]+/},
    {:regexp=>/(?:<title>phpPgAdmin<.title>|<span class="appname">phpPgAdmin)/},
    {:text=>'<td><span class="appname">phpPgAdmin</span></td>'},
    {:version=>%r{<span class="appname">phpPgAdmin</span> <span class="version">([\d\.]+)</span>} }
]
end
