Plugin.define do
name "Forest-Blog"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Forest Blog"
website "http://www.hostforest.co.uk/Products/blog.asp"
dorks [
'"powered by Forest Blog"',
'intitle:"Forest Blog Administration"'
]
matches [
    {:regexp=>/Powered [B|b]?y[:]? <a href="http:\/\/www.hostforest.co.uk\/[^"]*"[^>]+title="Forest Blog"[^>]*>/},
    {:text=>'			<h1>Forest Blog Administration</h1>'},
    {:text=>'<title>Forest Blog Administration</title>'},
    {:text=>'Forest Blog'},
    {:version=>/Powered [B|b]?y[:]? <a href="http:\/\/www.hostforest.co.uk\/[^"]*"[^>]+title="Forest Blog"[^>]*>Forest Blog<\/a> v([\d\.]+)/}
]
end
