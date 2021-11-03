Plugin.define do
name "phpGraphy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpGraphy is a free PHP photo gallery script released under GPL license."
website "http://phpgraphy.sourceforge.net/"
dorks [
'"This site is using phpGraphy" -intitle'
]
matches [
{ :text=>'<title>my phpGraphy site</title>' },
{ :version=>/This site is using <a href="http:\/\/phpgraphy\.sourceforge\.net\/">phpGraphy<\/a>\n([^\s]+) - Page generated in [\d\.]+s\.<\/div><!--\/\/footer-->/ },
]
end
