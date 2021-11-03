Plugin.define do
name "Indico"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Indico - Integrated Digital Conference - allows you to manage complex conferences, workshops and meetings."
website "http://indico.cern.ch/"
dorks [
'"powered by Indico" inurl:wcalendar.py'
]
matches [
    {:offset=>1, :regexp=>/Powered by\s+(?:CERN )?<a href="http:..(?:cdsware\.cern\.ch.indico.|indico-software\.org|cern\.ch.indico)">(?:CDS )?Indico( [\d\.]+)?/},
    {:search=>"headers", :text=>'MAKACSESSION'},
    {:text=>'<td class="menuConfTopCell" align="left" valign="bottom">'},
    {:text=>'href="http://cern.ch/indico'},
    {:version=>/<\/span>&nbsp;Powered by(\ CERN)? <a href="http:\/\/cern\.ch\/indico">Indico ([^<]+)<\/a>&nbsp;<span class="separator">/, :offset=>1 }
]
passive do
	m=[]
	m << { :name=>"MAKACSESSION Cookie" } if @headers["set-cookie"] =~ /^MAKACSESSION=[A-Z\d]{16}; Path=/
	m
end
end
