Plugin.define do
name "SmokePing"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

	"Andrew Horton", 

]
version "0.2"
description "SmokePing keeps track of your network latency"
website "http://oss.oetiker.ch/smokeping/index.en.html"
dorks [
'"Probing Targets" inurl:"show.cgi?target="'
]
matches [
{ :text=>'<tr><td class="menuitem" colspan="2">&nbsp;-&nbsp;<a class="menulink" HREF="?target=' },
{ :version=>/<A HREF="http:\/\/oss\.oetiker\.ch\/smokeping\/counter\.cgi\/([^\s\/\"]+)"><img border="0" src="[^"]+"><\/a>/ },
]
end
