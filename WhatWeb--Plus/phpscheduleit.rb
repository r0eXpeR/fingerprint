Plugin.define do
name "phpScheduleIt"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "A web-based resource scheduling system that allows administered management of reservations on any number of resources. Typical applications are conference room or machine reservation management. Written in PHP and tested on MySQL. "
website "http://phpscheduleit.sourceforge.net"
dorks [
'"powered by phpScheduleIt"'
]
matches [
{ :text=>'<div align="left"><img src="img/phpScheduleIt.png" alt="logo" vspace="5"/></div>' },
{ :text=>'<p align="center">Powered by <a href="http://phpscheduleit.sourceforge.net">phpScheduleIt</a></p>' },
{ :text=>'<p align="right"><a href="http://phpscheduleit.sourceforge.net">Powered By phpScheduleIt' },
{ :text=>'<br>Powered By: phpScheduleIt</p>', :certainty=>75 },
{ :version=>/<p align="center">[<!\-]*<a href="http:\/\/phpscheduleit.sourceforge.net">[\->]*Powered By phpScheduleIt v([\d\.]+)[<!\-]*<\/a>[\->]*<\/p>/ },
{ :version=>/<p align="center"><a href="http:\/\/phpscheduleit.sourceforge.net">phpScheduleIt v([\d\.]+)<\/a><\/p>/ },
{ :version=>/<p align="center">Powered by <a href="http:\/\/phpscheduleit.sourceforge.net">phpScheduleIt v([\d\.]+)<\/a><\/p>/ },
{ :version=>/[P|p]?owered by <a href="http:\/\/phpscheduleit.sourceforge.net"[^>]*>phpScheduleIt v([\d\.]+)<\/a>/ },
]
end
