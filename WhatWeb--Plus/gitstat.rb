Plugin.define do
name "gitstat"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "gitstat is a web-based statistics and monitoring system for git"
website "http://sourceforge.net/projects/gitstat/"
dorks [
'"Powered by gitstat"'
]
matches [
{ :version=>/<a href="http:\/\/sourceforge\.net\/projects\/gitstat\/"<font size=4>\(Powered by gitstat v([^\)^\s]+)\)<\/font><\/a>/ },
{ :text=>'<!-- FIXME: We should have some reference to the website of the git tree if available -->' },
{ :text=>'Powered by <a href="http://sourceforge.net/projects/gitstat/">gitstat</a> <br><img src="images/separator.gif" alt="" />Design: <a href="http://www.oswd.org/">OSWD.ORG</a></p>' },
]
end
