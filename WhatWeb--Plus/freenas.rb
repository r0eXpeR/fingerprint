Plugin.define do
name "FreeNAS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "FreeNAS is an Open Source Storage Platform based on FreeBSD and supports sharing across Windows, Apple, and UNIX-like systems."
website "http://www.freenas.org/"
dorks [
'"FreeNAS" "Please log in" inurl:"account/login/"'
]
matches [
    {:text=>'/images/ui/freenas-logo.png'},
    {:text=>'<!-- THIS IS A LOGIN WEBPAGE -->'},
    {:text=>'<a href="/" title="FreeNAS&trade;"><img src="/static/images/ui/freenas-logo.png?cache=" alt="FreeNAS&trade;" style="padding-left:10px;"/></a>'},
    {:text=>'title="Welcome to FreeNAS'},
    {:url=>"/", :search=>"headers[location]", :regexp=>/https?:\/\/[^\/]+\/account\/login\/\?next=\//},
    {:url=>"/static/images/ui/freenas-logo.png", :md5=>"e9f74076206e249ead75559119c028c6"},
    {:version=>/<div id="login" data-dojo-type="dijit\.Dialog" data-dojo-props="title: 'Welcome to FreeNAS&trade; ([^']+)'">/},
    {:version=>/<div id="login" dojoType="dijit\.Dialog" title="Welcome to FreeNAS ([^\s]+)">/}
]
end
