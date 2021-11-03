Plugin.define do
name "Trac"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Trac is an enhanced wiki and issue tracking system for software development projects."
website "http://trac.edgewall.org/"
dorks [
'"Powered by Trac" intitle:Trac'
]
matches [
    {:ghdb=>'"Powered by Trac" +intitle:Trac', :certainty=>75},
    {:offset=>1, :regexp=>/Powered by <a href="[^"]*"><strong>Trac(?:[ .]([\d.]+))?/},
    {:regexp=>/<a id="tracpowered/},
    {:search=>"headers", :text=>'trac_session'},
    {:text=>'<h1>Available Projects</h1>'},
    {:text=>'wiki/TracGuide'},
    {:version=>/Powered by <a[^>]*><strong>Trac ([^<]+)<\/strong><\/a><br \/>/}
]
passive do
        m=[]
        m << {:name=>"trac_form_token Cookie", :probability=>100 } if @headers["set-cookie"] =~ /trac_form_token=/
	m
end
end
