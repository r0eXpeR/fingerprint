Plugin.define do
name "JBoss"
authors [
  "Louis Nyffenegger",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "JBoss Application Server is the #1 most widely used Java application server on the market. A Java EE certified platform for developing and deploying enterprise Java applications, Web applications, and Portals, JBoss Application Server provides the full range of Java EE 5 features as well as extended enterprise services including clustering, caching, and persistence. - Homepaeg: http://www.jboss.org/jbossas/"
dorks [
'intitle:"Welcome to JBoss AS"'
]
matches [
    {:md5=>'799f70b71314a7508326d1d2f68f7519'},
    {:mmh3=>'-656811182'},
    {:name=>"Jboss default title",
		:regexp=>/<title>Welcome to JBoss AS<\/title>/},
    {:name=>"link to Administration Console",
		:certainty=>50,
		:regexp=>/<a href=\"\/admin-console\/\">Administration Console<\/a>/},
    {:name=>"link to JMX Console",
		:regexp=>/<a href=\"\/jmx-console\/\">JMX Console<\/a>/},
    {:name=>"link to Web Console",
		:regexp=>/<a href=\"\/web-console\/\">Jboss Web Console<\/a>/},
    {:search=>"headers", :text=>'Server: JBoss'},
    {:text=>'jboss.css'}
]
passive do
	m=[]
	if @headers["x-powered-by"] =~ /JBoss(AS)?-([^\/^\s]+)/
		m << { :version=>"#{$2}" }
	end
	if @headers["x-powered-by"] =~ /(JBossWeb-[^\/^\s^,]+)/
		m << { :module=>"#{$1}" }
	end
	m
end
end
