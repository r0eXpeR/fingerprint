Plugin.define do
name "VirtueMart"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "VirtueMart is an Open Source E-Commerce solution to be used together with a Content Management System (CMS) called Joomla!. Joomla! and VirtueMart are written in PHP and can be used in typical PHP/MySQL environments."
website "http://virtuemart.net/"
matches [
    {:certainty=>25, :regexp=>/<div id=["']vmMainPage/},
    {:certainty=>75, :text=>'href="/index.php?option=com_virtuemart&amp;page=shop.registration">'},
    {:regexp=>/<div id="vmMainPage/}
]
passive do
	m=[]
	m << { :name=>"virtuemart cookie" } if @headers["set-cookie"] =~ /virtuemart=[a-z\d]{26,32}/
	m
end
end
