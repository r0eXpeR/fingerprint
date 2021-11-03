Plugin.define do
name "RunCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "RunCms is Ease Of Use for webmasters. One of the worlds finest free CMS systems."
website "www.runcms.org/"
dorks [
'"powered by RunCMS" -Vulnerability -exploit inurl:module inurl:viewcat.php'
]
matches [
{ :ghdb=>'"powered by RunCMS" inurl:module inurl:viewcat.php' },
{ :version=>/<div align='center'><a href='http:\/\/www.runcms.org\/' target='_blank'> Powered by  RunCms ([\d\.a-z]+)[^&]* &copy; [\d]{4}-[\d]{4} / },
{ :version=>/<meta name="generator" content="[\s^"]*RUNCMS ([\d\.a-z]+)[^"]*"/i },
]
end
