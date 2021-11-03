Plugin.define do
name "Epic-Web-Honeypot"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Epic Web Honeypot"
matches [
{ :text=>'<center><font size="3" face="monospace">******************************** Epic Web Honeypot ********************************</font></center>' },
{ :version=>/<center><font size="3" face="monospace">\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* Version ([^\s]+) \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*<\/font><\/center>/ },
{ :text=>'<!-- Added OS fingerprints - creds - nmap and honeyd nmap.prints file!-->' },
]
end
