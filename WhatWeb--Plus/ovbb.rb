Plugin.define do
name "OvBB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Written in PHP and powered by MySQL, OvBB is a light-weight and fast discussion board system that mimics vBulletin 2 in both look and behavior while incorporating new features and functionality."
website "http://sourceforge.net/projects/ovbb/"
dorks [
'"powered by OvBB"'
]
matches [
{ :regexp=>/<title>[^:]+:: Powered by OvBB<\/title>/ },
{ :regexp=>/<img src="images\/ovbb.png" align="middle" border="0" alt="[^:]+:: Powered by OvBB" \/><\/a>/ },
{ :md5=>"8dd1c74458a43d658a9136333893a999", :url=>"/favicon.ico" },
{ :text=>'<p>Please try again by pressing the <a href="javascript:window.location=window.location;">refresh</a> button in your browser. An e-mail message has been dispatched to the <a href="mailto:' },
{ :version=>/<a style="color: #EEEEFF;" href="http:\/\/www.ovbb.org">Powered by OvBB V([\d\.a-z]+)<\/a><br \/><br \/>/ },
]
end
