Plugin.define do
name "File-Upload-Manager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Web based file upload manager written in PHP."
website "http://www.mtnpeak.net"
dorks [
'intitle:"File Upload Manager" "rename to" "file types allowed"'
]
matches [
    {:certainty=>75, :ghdb=>'+intitle:"File Upload Manager" "rename to" "file types allowed"'},
    {:certainty=>75, :text=>'<title>File Upload Manager</title>'},
    {:text=>'<!-- Copyright (c) 2003 thepeak. Get your own copy of this free PHP script from www.mtnpeak.net -->'},
    {:text=>'<IMG SRC="/images/header.jpg" ALT="File Upload Manager">'},
    {:text=>'<a href="http://www.mtnpeak.net" style="text-decoration: none; color: #C0C0C0; font-size: 9px; cursor: default";>&copy; thepeak</a>'},
    {:text=>'File Upload Manager'},
    {:version=>/<!-- File Upload Manager v([\d\.]+[^>]+) -->/}
]
end
