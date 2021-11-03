Plugin.define do
name "GeoHttpServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "GeoHttpServer"
website "http://www.geovision.com.tw/english/index.asp"
matches [
{ :url=>"/Language.js", :md5=>"f98b7425f7ff4680ac7682ed61844a17" },
{ :url=>"/Language.js", :md5=>"6682a8f95d0beb6524f0c08d2982654e" },
{ :url=>"/Language.js", :md5=>"97cdb361307be266683bceb8c452927b" },
]
passive do
	m=[]
	if @headers["server"] =~ /^GeoHttpServer$/
		m << { :name=>"HTTP Server Header" }
	end
	m
end
end
