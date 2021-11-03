Plugin.define do
name "Oracle-Primerva"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Enterprise Project Portfolio Management (EPPM) solutions"
website "http://www.oracle.com/oms/eppm/index.html"
dorks [
'intitle:"Primavera Contract Management" "Oracle is a registered trademark of Oracle Corporation and/or its affiliates." "Loading Java Plugin and Security Certificate"',
'inurl:"exponline/logon.jsp" intitle:"Primavera Contract Management"'
]
matches [
{ :string=>/<!-- @#\$ Copyright Start\s+. 1999 - (20[\d]{2}) Primavera Systems, Inc\.  All rights reserved\./ },
{ :text=>'<!-- use the default style sheet only.... we do not know the users locale at this time -->' },
{ :version=>/<div class="IntroAreaBuildId" id="BuildId">Version ([^,^\s]+, Build \d+)(&nbsp;)*<\/div>/ },
{ :version=>/<div align="right" id="BuildId">Version ([^,^\s]+, Build \d+)(&nbsp;)*<\/div>/ },
{ :text=>'<img src="img/process_meter.gif" border=0 id="progressimage"><br><br>Loading Java Plugin and Security Certificate' },
]
end
