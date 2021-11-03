Plugin.define do
name "TimeLink"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Full-featured web-based Time and Attendance, Workforce Scheduling, Leave Management and Labor Activity software"
website "http://www.timelink.com/productsbyproducts.html"
dorks [
'intitle:Timelink "Language" "Password" "Version" -ext:html'
]
matches [
{ :version=>/<p>Version ([\d\.]+)&nbsp;&copy; 2003 - 20[\d]{2} Time ?Link International Corp\. All Rights Reserved\.<\/p>/ },
{ :text=>'<link rel="shortcut icon" type="image/png" href="/timelink/images/favicon.ico"/>' },
{ :url=>"images/login-panel-back.png", :md5=>"37897a66217e910dd6c67f1d09c5e870", :version=>"6.x", :string=>"Enterprise" },
]
passive do
	m=[]
	if @body =~ /<title>Timelink<\/title>/
		m << { :model=>@body.scan(/<td><div class="heading">([A-Z]+)<font class="titlefont">([^<]+)<\/font><\/div><\/td>/).flatten } if @body =~ /<td><div class="heading">([A-Z]+)<font class="titlefont">([^<]+)<\/font><\/div><\/td>/
	end
	m
end
end
