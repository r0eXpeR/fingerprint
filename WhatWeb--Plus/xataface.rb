Plugin.define do
name "Xataface"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Xataface is a full-featured Web application framework. It automatically generates the appropriate forms, lists, and menus for a user to interact with a MySQL database without having to know any SQL."
website "http://xataface.com/"
dorks [
'"Powered by Xataface" inurl:"-table"'
]
matches [
{ :text=>'<!-- custom javascripts can go in slot "custom_javascripts" -->' },
{ :text=>'<!-- Place any other items in the head of the document by filling the "head_slot" slot -->' },
{ :string=>/<div class="fineprint">[\s]+Powered by Xataface<br\/>[\s]+\(c\) 2005-(20[\d]{2}) All rights reserved<\/div>/ },
]
end
