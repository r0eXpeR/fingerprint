Plugin.define do
name "iRealty"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "iRealty is an advanced flexible php real estate software and CMS with open source code."
website "http://www.irealtysoft.com/"
dorks [
'"powered by iRealty"'
]
matches [
{ :text=>'Powered by <a href="http://www.irealty.com/" title="iRealty"> iRealty </a>' },
{ :text=>'<a target="_blank" href="http://www.irealtysoft.com/">- Powered by iRealty</a>' },
{ :text=>'Powered by <a target="_blank" title="iRealty &mdash; Real Estate Listing Software" href="http://www.irealtysoft.com/">iRealty</a>,' },
{ :text=>'Powered by <a target="_blank" title="iRealty &mdash; Real Estate Listing Software" href="http://www.worksforweb.com/products/iRealty/">iRealty</a>,' },
]
passive do
        m=[]
	m << { :name=>"iRealty PHPSESSID%28_%29 cookie" } if @headers["set-cookie"] =~ /^PHPSESSID%28_%29=[a-z0-9]{32}/
        m
end
end
