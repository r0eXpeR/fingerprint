Plugin.define do
name "WANem"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WANem is a Wide Area Network emulator designed by Performance Engineering Research Centre, TATA Consultancy Services, Mumbai."
website "http://wanem.sourceforge.net/"
matches [
{ :version=>/<html><body><h1>WANem v([^\s^:]+): It works\!<\/h1><\/body><\/html>/ },
{ :url=>'/WANem/about.html', :version=>/<b>WANem v([^\s^<]+)<\/b><br>/ },
{ :url=>'/WANem/title.html', :text=>'<TITLE>Welcome to WANem</TITLE>' },
]
end
