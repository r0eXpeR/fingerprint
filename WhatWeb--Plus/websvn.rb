Plugin.define do
name "WebSVN"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WebSVN offers a view onto your subversion repositories that's been designed to reflect the Subversion methodology. You can view the log of any file or directory and see a list of all the files changed, added or deleted in any given revision. You can also view compare two versions of a file so as to see exactly what was changed in a particular revision. Since it's written using PHP, WebSVN is very portable and easy to install."
website "http://www.websvn.info/"
dorks [
'inurl:"comp.php?repname="',
'"Powered by WebSVN * and Subversion"'
]
matches [
{ :version=>/<meta http-equiv="generator" content="WebSVN ([^"]+)"[\s]?\/>/ }, #"
{ :text=>'<link rel="alternate" type="application/rss+xml" title="WebSVN RSS" href="rss.php?repname=' },
{ :text=>"<link rel='alternate' type='application/rss+xml' title='WebSVN RSS' href='rss.php?repname=" },
{ :md5=>"beb816a701a4cee3c2f586171458ceec", :url=>"templates/BlueGrey/images/favicon.ico" },
{ :md5=>"b2bb1d54c7bab453c0e054b31b6919e4", :url=>"templates/BlueGrey/images/websvn.png" },
]
passive do
	m=[]
	if @body =~ /Powered by <a href="http:\/\/www\.websvn\.info\/">WebSVN<\/a> ([^\s]+) and <a href="http:\/\/subversion\.tigris\.org">Subversion<\/a> [^\s]+ &nbsp; &nbsp; &#x2713;/
		m << { :version=>@body.scan(/Powered by <a href="http:\/\/www\.websvn\.info\/">WebSVN<\/a> ([^\s]+) and <a href="http:\/\/subversion\.tigris\.org">Subversion<\/a> [^\s]+ &nbsp; &nbsp; &#x2713;/).flatten }
		m << { :module=>@body.scan(/Powered by <a href="http:\/\/www\.websvn\.info\/">WebSVN<\/a> [^\s]+ and <a href="http:\/\/subversion\.tigris\.org">(Subversion)<(\/)a> ([^\s]+) &nbsp; &nbsp; &#x2713;/).flatten }
	end
	if @status.to_s =~ /^302$/ and @headers["location"] =~ /^listing\.php\?repname=[^\s]+$/
		m << { :string=>@headers["location"].scan(/^listing\.php\?repname=([^\s]+)$/).flatten }
	end
	m
end
end
