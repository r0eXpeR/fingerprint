Plugin.define do
name "Sony-Projector"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sony projecter"
website "http://pro.sony.com/bbsc/ssr/cat-projectors/"
matches [
{ :url=>"/", :text=>'<BODY onLoad="setWindowTitle();showIndex();">' },
{ :url=>"/", :text=>'<form Action="/Forms/index_1" method="post"  NAME="form1">' },
{ :url=>"/", :text=>'<script type="text/javascript" src="sonylogoJS.js"></script>' },
{ :url=>"/index_J.htm", :text=>'<frame src="index_bg.htm" NAME="RIGHT" marginwidth="0" marginheight="0" scrolling="no" noresize>' },
{ :url=>"/index_E.htm", :text=>'<frame src="index_bg.htm" NAME="RIGHT" marginwidth="0" marginheight="0" scrolling="no" noresize>' },
{ :text=>'<TR><TD COLSPAN="2"><script type="text/javascript">sonylogo();</script></TD>' },
{ :url=>"/info_data.htm", :model=>/^var info_pj_value = \[[\s]+'([^\s^']+)','[\d]+','[^']{0,256}'\];/ },
{ :url=>"/info_data.htm", :version=>/^var info_other_value = \[[\s]+' ?([^\s^']+)'/ },
]
passive do
	m=[]
	if @headers["server"] =~ /^Network Projector$/
		m << { :certainty=>75, :name=>"Server Header" }
	end
	if @headers["www-authenticate"] =~ /Basic realm="Projector (User|Administration)"/
		m << { :certainty=>75, :name=>"WWW-Authenticate Header" }
	end
	m
end
end
