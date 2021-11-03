Plugin.define do
name "AutoIndex-PHP-Script"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AutoIndex PHP Script - A Website Directory Indexer and File Manager"
website "autoindex.sourceforge.net"
dorks [
'"Powered by AutoIndex PHP Script"'
]
matches [
    {:search=>"headers", :text=>'AutoIndex2'},
    {:text=>'<div class="autoindex_small" style="text-align: right;">Powered by <a class="autoindex_a" href="autoindex.sourceforge.net/" target="_blank">AutoIndex PHP Script</a></div>'},
    {:text=>'<div class="small" style="text-align: right;">Powered by <a class="default_a" href="autoindex.sourceforge.net/">AutoIndex PHP Script</a></div>'},
    {:text=>'<link href="./templates/default/alternate.css" rel="alternate stylesheet" title="AutoIndex Alternate" type="text/css" />'},
    {:text=>'<link href="./templates/default/default.css" rel="stylesheet" title="AutoIndex Default" type="text/css" />'},
    {:text=>'<link rel="stylesheet" href="/stylesheet.css" type="text/css" title="AutoIndex Default" />'},
    {:text=>'autoindex.sourceforge.net/")'},
    {:text=>'title="AutoIndex Default'},
    {:version=>/<!--[\r\n]*Powered by AutoIndex PHP Script \(version ([\d\.]+)\)[\r\n]*Copyright \(C\) 2002-[\d]{4} Justin Hagstrom[\r\n]*http:\/\/autoindex.sourceforge.net[\/]?/}
]
end
