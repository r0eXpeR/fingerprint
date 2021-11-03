Plugin.define do
name "SABnzbd"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SABnzbd is an Open Source Binary Newsreader written in Python."
website "http://sabnzbd.org/"
matches [
{ :regexp=>/    <form action="\/sabnzbd\/[^"]*" method="POST">/ },
]
passive do
	m=[]
	m << { :name=>'HTTP WWW Authenticate header' } if @headers['www-authenticate'] =~ /realm="SABnzbd"/
	m
end
end
