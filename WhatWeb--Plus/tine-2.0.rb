Plugin.define do
name "Tine-2"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Tine 2.0 is an open source project which combines groupware and CRM in one consistent interface. Tine 2.0 is web-based and optimises collaboration and organisation of groups in a lasting manner."
website "http://www.tine20.org/"
dorks [
'"You need to enable javascript to use Tine 2.0"'
]
matches [
{ :text=>'<!-- Tine 2.0 static files -->' },
{ :text=>'<!-- Tine 2.0 setup static files -->' },
{ :text=>'Powered by: <a target="_blank" href="http://www.tine20.org/">Tine 2.0</a></div>' },
{ :text=>'<noscript><p>You need to enable javascript to use <a href="http://www.tine20.org/" title="online open source groupware and crm">Tine 2.0</a></p></noscript>' },
{ :text=>'<noscript>You need to enable javascript to use <a href="http://www.tine20.org">Tine 2.0 setup or use the CLI setup</a></noscript>' },
]
passive do
	m=[]
	m << { :name=>"TINE20SESSID Cookie" } if @headers['set-cookie'] =~ /TINE20SESSID=[^;]+;/
	m << { :name=>"TINE20SETUPSESSID Cookie" } if @headers['set-cookie'] =~ /TINE20SESSID=[^;]+;/
	m
end
end
