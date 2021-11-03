Plugin.define do
name "WeBid"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Open source php/mysql fully featured auction script."
website "http://www.webidsupport.com/"
dorks [
'"powered by WeBid"'
]
matches [
{ :text=>'<meta name="generator" content="WeBid">' },
{ :string=>/Powered by <a href="http:\/\/www\.webidsupport\.com\/">WeBid<\/a> &copy; 2008\s?[,-] ([\d]{4}) <a href="http:\/\/www\.webidsupport\.com\/">WeBid<\/a>/ },
{ :search=>"headers[set-cookie]", :regexp=>/WEBID_ONLINE=[a-f\d]{32};/ },
{ :version=>/<h1>WeBid Installer v([^\s^>]+)<\/h1>[\s]*<form name="form1" method="post" action="\?step=1">/ },
]
end
