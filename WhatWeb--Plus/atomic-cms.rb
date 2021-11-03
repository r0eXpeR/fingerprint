Plugin.define do
name "Atomic-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Atomic CMS is a powerful and free open source ASP.NET CMS (content management system) developed on ASP.NET MVC 2 platform. Atomic CMS provides you rich user interface to create, edit, remove pages at your website."
website "http://atomiccms.com/"
dorks [
'"Powered by AtomicCms"'
]
matches [
{ :text=>'Powered by AtomicCms <a href="http://atomiccms.com/" target="_blank">content management' },
{ :version=>/Powered by AtomicCms ([\d\.]{1,15}) <a href="http:\/\/atomiccms.com\/" target="_blank">content management/ },
{ :url=>"favicon.ico", :md5=>"9f500a24ccbdda88cf8ae3ec7b61fc40" },
]
end
