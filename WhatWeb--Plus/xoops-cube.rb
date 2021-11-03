Plugin.define do
name "XOOPS-Cube"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "XOOPS Cube is an Open Source Web Application Platform"
website "http://xoopscube.org/"
dorks [
'"Powered by XOOPS Cube"'
]
matches [
{ :certainty=>75, :text=>'<title>XOOPS Cube Site - Just Use it!</title>' },
{ :certainty=>75, :text=>'<!-- RMV: added module header -->' },
{ :text=>'<meta name="generator" content="XOOPS Cube" />' },
{ :text=>'<meta name="author" content="XOOPS Cube" />' },
{ :version=>/Powered by XOOPS Cube ([^\s^&]+)&copy; 200[01]-20[\d]{2} (<a href="http:\/\/xoopscube\.sourceforge\.net\/" target="_blank">)?XOOPS Cube Project/ },
{ :version=>/Powered by <a href="http:\/\/xoopscube\.org\/" rel="external">XOOPS Cube<\/a> ([^\s]+) &copy; 200[01]-20[\d]{2} <a href="http:\/\/xoopscube\.sourceforge\.net\/" rel="external">XOOPS Cube Project<\/a><\/p>/ },
]
end
