Plugin.define do
name "HP-SiteScope"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "HP SiteScope is an agentless monitoring software focused on monitoring the availability and performance of distributed IT infrastructures, including servers, operating systems, network and Internet services, applications and application components. Originally written by Freshwater Software in 1996, a company acquired by Mercury Interactive in 2001. Mercury Interactive was subsequently acquired by Hewlett Packard (HP) in 2006."
website "More Info: http://en.wikipedia.org/wiki/HP_SiteScope"
dorks [
'"SiteScope Login" intitle:"SiteScope Login" "Mercury Interactive Corporation"'
]
matches [
    {:search=>"headers", :text=>'SiteScope'},
    {:text=>'<center><H2>SiteScope Login</H2></center><hr>'},
    {:text=>'SiteScope Login'},
    {:url=>"/", :version=>/<p class=fine align=center><small>SiteScope ([\d\.]+)/}
]
passive do
	m=[]
	if @headers["server"] =~ /^SiteScope\//
		if @headers["server"] =~ /^SiteScope\/(.+) [\d]{1,2}:[\d]{2} [ap]m [\d]{1,2}\/[\d]{2}\/[\d]{2} [Bb]uild:? ([\d]+)$/
			m << { :version=>"#{$1} build #{$2}" }

		elsif @headers["server"] =~ /^SiteScope\/([^\s]+( [A-Z]\d)?)/
			m << { :version=>"#{$1}" }
		end
	end
	if @headers["www-authenticate"] =~ /BASIC realm="SiteScope Administrator"/
		m << { :name=>"WWW-Authenticate Header" }
	end
	m
end
end
