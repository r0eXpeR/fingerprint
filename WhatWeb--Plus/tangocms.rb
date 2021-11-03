Plugin.define do
name "TangoCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TangoCMS is an open source (GNU/GPL 2.1) PHP Content Management System (CMS)."
website "http://tangocms.org/"
dorks [
'"Powered by TangoCMS"'
]
matches [
{ :regexp=>/Powered by <a href="http:\/\/(www\.)?tangocms\.org" title="(Open Source CMS|TangoCMS)">TangoCMS<\/a>\./ },
{ :text=>'<input type="checkbox" id="sessionRemember" name="session[remember]" value="1" checked="checked"> <label class="horizontal" for="sessionRemember">Remember me?</label>' },
]
passive do
	m=[]
	m << { :name=>"ZULA_6666cd76f96956469e7be39d750cc7d9 Cookie" } if @headers["set-cookie"] =~ /ZULA_6666cd76f96956469e7be39d750cc7d9=[^;^\s]+;/
	m
end
end
