Plugin.define do
name "OpenI"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "OpenI is a Business Intelligence web application for on-demand or SaaS deployments. OpenI enables simple and clean data visualization from OLAP and RDBMS, so users can intuitively build and publish interactive reports, analyses, and dashboards."
website "http://openi.org/"
dorks [
'"Openi Intelligence Portal" "Username" "Password"'
]
matches [
{ :version=>/<span class="big-title">Openi ([^\s^<]+)<\/span><br/ },
{ :string=>/<span class="big-title">Openi-(Jasper)<\/span><br/ },
]
passive do
	m=[]
	if @body =~ /<span class="big-subtitle">Openi Intelligence Portal<\/span>/
		m << { :name=>"big-subtitle" }
		if @body =~ /<td align="right" style="font-size: 11px;">([^&^<]+)&nbsp;<\/td>/
			m << { :version=>"#{$1}" }
		end
	end
	m
end
end
