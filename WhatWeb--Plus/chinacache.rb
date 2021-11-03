Plugin.define do
name "ChinaCache"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "ChinaCache is a leading content distribution network (CDN) service provider in China. This header, vehicolated through squid, not only tells the world where the content is coming from, it also brings some (obscure) info with it. What is sure is that there is no open standard on how to use this server header field. Probably it is there only for debugging purposes by the employees of ChinaCache."
website "http://www.chinacache.com/"
passive do
	m=[]
	unless @headers["powered-by-chinacache"].nil?
		m << { :string=>@headers["powered-by-chinacache"].to_s }
	end
	m
end
end
