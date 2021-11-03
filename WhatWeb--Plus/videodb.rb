Plugin.define do
name "VideoDB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "VideoDB is a web application to manage a personal video collection - Requires: PHP and MySQL"
website "http://www.videodb.net/"
dorks [
'inurl:borrow.php?diskid='
]
matches [
{ :text=>'<a href="index.php?export=pdf&amp;ext=.pdf"><img src="images/pdfexport.png" /></a>' },
{ :text=>'<!-- /content --><!-- footer.tpl -->' },
{ :text=>'<link rel="alternate" type="application/rss+xml" title="VideoDB RSS" href="index.php?export=rss" />' },
{ :text=>"<meta name='description' content='VideoDB' />" },
{ :text=>'<meta name="description" content="VideoDB" />' },
{ :version=>/<a href="http:\/\/www\.splitbrain\.org\/go\/videodb" class="splitbrain">v\.([^<]+)<\/a>/ },
{ :version=>/<div id="footerversion">[\s]*<a href="http:\/\/www\.videodb\.net">v([^<]+)<\/a>[\s]*<\/div>/ },
]
passive do
	m=[]
	if @headers["set-cookie"] =~ /VDBuserid=/ and @headers["set-cookie"] =~ /VDBusername=/ and @headers["set-cookie"] =~ /VDBpassword=/
		m << { :name=>"Cookies" }
	end
	m
end
end
