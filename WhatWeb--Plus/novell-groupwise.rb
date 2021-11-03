Plugin.define do
name "Novell-Groupwise"
authors [
  "Andrew Horton",

]
version "0.3"
description "Novell GroupWise collaboration software is a premier collaboration tool for large enterprise. GroupWise WebAccess was released as an add-on to Novell GroupWise, providing internet-based access to GroupWise from a web browser."
website "http://www.novell.com/products/groupwise/"
dorks [
'intitle:"novell webaccess" inurl:servlet/webacc -filetype:html'
]
matches [
{ :text=>"<!-- START NOVELL SERVICES -->" },
{ :text=>"<!-- START GROUPWISE WEBACCESS -->" },
{ :text=>'<!-- ========== GroupWise WebAccess Form ========== -->' },
{ :ghdb=>'intitle:"novell webaccess" inurl:"servlet/webacc" -filetype:html' },
{ :text=>"<title>Novell Web Services</title>"},
{ :text=>'<TITLE>Novell WebAccess</TITLE>' },
{ :version=>/^&copy; Copyright 1993-20[\d]{2} Novell, Inc. All rights reserved.[\s]+<BR>Version ([\d\.]+)$/ },
]
passive do
	m=[]
	if @headers["set-cookie"] =~ /^NJSCN=[\d]+$/
		m << { :name=>"NJSCN Cookie" }
	end
	m
end
end
