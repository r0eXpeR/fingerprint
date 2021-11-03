Plugin.define do
name "Gossamer-Forum"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Gossamer Forum is the ideal software solution to create, or enhance, any online community. Great features including a WYSIWYG Editor and powerful search makes Gossamer Forum one of the most fully featured forum scripts out there."
website "http://www.gossamer-threads.com/products/gossamer-forum/"
dorks [
'"Powered by Gossamer Forum" filetype:cgi inurl:gforum.cgi'
]
matches [
    {:account=>/<a href="gforum\.cgi\?username=([^;^>^"]+);guest=[\d]+">/},
    {:certainty=>75, :text=>'<title>Gossamer Forum: An error occured!</title>'},
    {:ghdb=>"Powered by Gossamer Forum filetype:cgi inurl:gforum.cgi"},
    {:text=>'Gossamer Forum'},
    {:text=>'href="gforum.cgi?username='},
    {:version=>/Powered by <a href="http:\/\/www.gossamer-threads.com">Gossamer Forum v.([\d\.]+)<\/a>/}
]
end
