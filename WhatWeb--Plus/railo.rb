Plugin.define do
name "Railo"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Railo is an Open Source ColdFusion Markup Language (CFML) server."
website "http://getrailo.com/"
dorks [
'inurl:railo-context/admin/ ext:cfm'
]
matches [
{ :text=>'<script language = "JavaScript" type="text/javascript" src="/railo-context/form.cfm"></script><script language = "JavaScript" type="text/javascript">' },
]
passive do
	m=[]
	m << { :version=>@headers["railo-version"].to_s } if @headers["railo-version"] =~ /^[\d\.]+$/
	m
end
end
