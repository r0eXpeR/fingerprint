Plugin.define do
name "Zenoss-Core"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Zenoss (Zenoss Core) is an open-source application, server, and network management platform based on the Zope application server."
website "http://sourceforge.net/projects/zenoss/"
dorks [
'intitle:"Login" inurl:"zport" "Zenoss, Inc." "Version"'
]
matches [
{ :version=>/<div id="copyright">[\s]+<p>Copyright &copy; 2005-20[\d]{2} Zenoss, Inc\. \| Version[\s]+<span>([^\s^<]+)<\/span>[\s]+/ },
{ :text=>'<link rel="shortcut icon" type="image/x-icon" href="/zport/dmd/favicon.ico" />' },
]
end
