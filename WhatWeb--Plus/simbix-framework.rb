Plugin.define do
name "Simbix-Framework"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Simbix Framework [Russian]"
website "http://www.simbix.com/"
matches [
{ :url=>"logo-lpage-owner.png", :md5=>"500cf2101e7b3512f602203695726520" },
{ :text=>'<div class="image"><img src="/logo-lpage.png" width="40" height="40" alt="Simbix Framework" /></div>' },
{ :version=>/<meta name="generator" content="Simbix Framework v([^"^\s]+)" \/>/ },
]
passive do
	m=[]
	if @headers["x-powered-by"] =~ /^Simbix Framework\/([^\s]+)$/
		m << { :version=>"#{$1}" }
	end
	if @headers["x-simbix-version"] =~ /^([^\s]+)\.YYMMDD-HHMM$/
		m << { :version=>"#{$1}" }
	end
	m
end
end
