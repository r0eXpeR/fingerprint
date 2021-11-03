Plugin.define do
name "WSN-Forum"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WSN Forum is a complete, free, full-featured and multilingual discussion forum script. More than just a great forum, it includes instant messaging and chat room features out of the box."
website "http://www.wsnforum.com/"
matches [
{ :text=>'<title>WSN Forum Admin Login</title>' },
{ :text=>'<title>WSN Forum Administration Panel</title>' },
{ :version=>/<span class="(topbar|group)" style="margin-left: 8px;">WSN Forum ([^<]+) Admin Login<\/span>/, :offset=>1 },
{ :version=>/<span class="(topbar|group)">WSN Forum ([^<]+) Admin Panel<\/span>/, :offset=>1 },
{ :certainty=>25, :text=>'<!-- place any jquery-dependent script tags that need to be before the /head tag in here -->' },
{ :certainty=>25, :regexp=>/<div class="boxtitle" on[c|C]lick="minmax\('[a-z]+box'\)"><img src=/ },
{ :text=>'<textarea readonly rows="20" cols="75">WSN Forum License Agreement' },
]
end
