Plugin.define do
name "Fortinet-Firewall"
authors [
  "Aung Khant, http://yehg.net",

  "Brendan Coles <bcoles@gmail.com>", 
]
version "0.2"
description "Fortinet firewall technology combines ASIC-accelerated stateful inspection with an arsenal of integrated application security engines to quickly identify and block complex threats."
website "http://www.fortinet.com/solutions/firewall.html"
dorks [
'intitle:"Please Login" "Warning: this page requires Javascript. To correctly view, please enable it in your browser."'
]
matches [
{ :certainty=>75, :url=>"/", :md5=>"c647dc149f55829659640751e9184f8c" },
{ :certainty=>75, :url=>"/index.html", :md5=>"c647dc149f55829659640751e9184f8c" },
{ :url=>"/login", :certainty=>75, :regexp=>/str_table\.token_needed = "Please input your token code.";[\s]+str_table\.ncode_needed = "FortiToken clock drift detected\. Please input the next code and continue\.";[\s]+str_table\.mail_token_msg = "An email message containing a Token Code will be sent to";/ },
{:url=>'login.js?nocache='+rand(36**8).to_s(36), :name=>'Login.js MD5 Hash', :md5=>'6032999e08978b317d8382249866232a'},
{:url=>'login.js?nocache='+rand(36**8).to_s(36), :name=>'Login.js Copyright Text',:regex=>/login.js(\n|\r\n)Copyright Fortinet, Inc\.(\n|\r\n)All rights reserved\./},
{:url=>'login', :name=>'Login page MD5 hash', :md5=>'8bc0d101e3a25c98a9cbcf18240bd271'},
{:url=>'success', :name=>'Success Page MD5', :md5=>'1451298ccf3a24e342b20e6684cbb0dc'},
]
passive do
	m=[]
	cookie = @headers['set-cookie'] if @headers.keys.include?('set-cookie')
	if cookie =~ /APSCOOKIE(_[\d]+)?=/ and cookie =~ /log_filters=/
		m << {:name=>'HTTP Cookie'}
	end
	m
end
end
