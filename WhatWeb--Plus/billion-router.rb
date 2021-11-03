Plugin.define do
name "Billion-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Billion router"
website "http://www.billion.com/product/product.html"
matches [
    {:search=>"headers", :text=>'Basic realm="WebAdmin")'},
    {:search=>"headers", :text=>'Billion Sky'},
    {:url=>"/customized/logo.gif", :md5=>"766b7266a7324317b84be0d15cffc4aa"},
    {:url=>"/customized/logo.gif", :md5=>"82b6dea5a084044bf65f9af5440dfaf1"}
]
passive do
	m=[]
	if @headers["www-authenticate"] =~ /Basic realm="Billion Sky"/
		m << { :name=>"WWW-Authenticate" }
	end
	if @headers["www-authenticate"] =~ /Basic realm="WebAdmin"/ and @headers["server"] =~ /Conexant-EmWeb/
		m << { :name=>"WWW-Authenticate", :certainty=>25 }
	end
	m
end
end
