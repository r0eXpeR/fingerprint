Plugin.define do
name "PieCrust"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PieCrust is a static website generator and lightweight CMS that's all managed with text files."
website "http://bolt80.com/piecrust/"
dorks [
'"Baked with PieCrust"'
]
matches [
{ :text=>'<meta name="generator" content="PieCrust" />' },
{ :version=>/<meta name="generator" content="PieCrust ([^\s^"]+)" \/>/ },
{ :version=>/Baked with <em><a href="http:\/\/bolt80\.com\/piecrust\/">PieCrust<\/a> ([^\s^<]+)<\/em>\.<\/p>/ },
]
end
