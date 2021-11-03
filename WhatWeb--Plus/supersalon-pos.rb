Plugin.define do
name "SuperSalon-POS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SuperSalon is one of the newest salon software systems in the market, but has already been licensed in thousands of national chain, regional chain and independent salons and cosmetology schools in the US, Canada, Europe and Asia, making it one of the most widely licensed salon POS software in the world."
website "http://www.supersalon.com/"
passive do
	m=[]
	m << { :name=>"WWW-Authenticate realm" } if @headers["www-authenticate"] =~ /^Basic realm="SuperSalon POS"$/
	m
end
end
