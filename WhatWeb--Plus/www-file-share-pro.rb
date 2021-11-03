Plugin.define do
name "WWW-File-Share-Pro"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WWW File Share Pro - Share all kinds of files on the internet or on your intranet with this handy software."
website "http://www.wfshome.com/"
dorks [
'"Powered by LionMax Software" intitle:"WWW File Share" -allintext'
]
matches [
{ :text=>'<td height="27"><a href="http://www.lionmax.com" target="_blank">Powered by LionMax Software</a></td>' },
]
passive do
	m=[]
	m << { :name=>"HTTP Server header" } if @headers["server"] =~ /^WWW File Share Pro$/
	m
end
end
