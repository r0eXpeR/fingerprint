Plugin.define do
name "uPortal"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "uPortal"
dorks [
'"powered by uportal"'
]
matches [
{ :ghdb=>'"powered by uportal"', :certainty=>75 },
{ :version=>/<img[^>]*alt="Powered by uPortal ([\d\.]+)"[^>]*>/ },
{ :version=>/<a target="_blank" title="Powered by \$" href="http:\/\/www.uportal.org">Powered by uPortal ([^<]+)<\/a>/ },
]
passive do
        m=[]
	if @headers["uportal-version"] =~ /uPortal_rel-([\-0-9]+)/i
		v=@headers["uportal-version"].scan(/uPortal_rel-([\-0-9]+)/i)[0][0]
		m << {:name=>"uportal-version header",  :version=>v }
	end
        m
end
end
