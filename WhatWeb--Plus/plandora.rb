Plugin.define do
name "Plandora"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Web-based project management suite including time track, dashboard gadgets, requests, BSC (KPI), knowledge base, risks, agile board, resource capacity, surveys, SVN integration and gantt chart."
website "http://www.plandora.org/"
dorks [
'"Plandora Project" "User" "Password" "Login" inurl:"pandora/do"'
]
matches [
{ :text=>'<area shape="rect" coords="180,1,215,30" href="javascript:void(0);" onClick="closeFloatPanel();" />' },
]
passive do
	m=[]
	if @body =~ /<td background="\.\.\/images\/footer_backg\.png" class="footerNote">/
		m << { :name=>"td background" }
		if @body =~ / 2004-20[\d]{2}&nbsp;v([\d\.]+)/
			m << { :version=>"#{$1}" }
		end
	end
	m
end
end
