Plugin.define do
name "4images"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "4images is a powerful web-based image gallery management system. Features include comment system, user registration and management, password protected administration area with browser-based upload and HTML templates for page layout and design."
website "http://www.4homepages.de/"
matches [
    {:regexp=>/Copyright &copy; 2002-[0-9]{4} <a href="http:\/\/www.4homepages.de[\>]*>4homepages.de<\/a>/},
    {:search=>"headers", :text=>'4images_'},
    {:text=>'4homepages.de")'},
    {:text=>'powered by 4images'},
    {:version=>/Powered by <b>4images<\/b> ([\d\.]+)/}
]
end
