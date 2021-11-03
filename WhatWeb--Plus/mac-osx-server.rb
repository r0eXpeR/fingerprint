Plugin.define do
name "Mac-OSX-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Powerful yet streamlined, Snow Leopard Server makes it easier than ever for the people in your organization to collaborate, communicate, and share information. Up to 2x faster than its predecessor, Mac OS X Server v10.6 Snow Leopard is a full 64-bit UNIX server OS with dozens of new and updated features."
website "http://www.apple.com/server/macosx/"
matches [
{ :certainty=>75, :text=>'<title>Mac OS X Server</title>' },
{ :version=>/<div class="page_footer_appversion">Mac OS X Server Web Services Server ([\d\.]+)<\/div>/, :os=>"Mac OSX" },
{ :account=>/<li><a href="\/users\/([^\/]+)\/"><span class="img"><img src="\/collaboration\/images\/user\.jpg" alt="" width="32" height="32"><\/span><span class="title">[^<]+<\/span><span class="description"><\/span><\/a><\/li>/, :os=>"Mac OSX" },
{ :text=>'<iframe id="webmail_frame" src="/webmail/src/"><!-- this frame will enable the webmail link if webmail is active --></iframe>', :os=>"Mac OSX" },
{ :text=>'<link rel="stylesheet" type="text/css" media="screen, projection" href="/collaboration/css/required_compressed.css">', :os=>"Mac OSX" },
]
passive do
	m=[]
	if @status == 401 and @headers["www-authenticate"] =~ /basic realm="Mac OS X Server Web Services"/
		m << { :name=>"WWW-Authenticate realm", :os=>"Mac OSX" }
	end
	m
end
end
