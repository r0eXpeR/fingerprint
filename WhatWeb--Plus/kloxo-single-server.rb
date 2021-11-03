Plugin.define do
name "Kloxo-Single-Server" 
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Kloxo (aka HyperVM aka LxAdmin) is a fully scriptable, distributed and a 100% object oriented hosting platform"
website "http://www.lxcenter.org/kloxo.htm"
dorks [
'"Use a valid username and password to gain access to the console" -lxcenter.org'
]
matches [
    {:certainty=>75, :text=>"Use a valid username and password to gain access to the console</b>"},
    {:name=>"login form",
:text=>'<form name=loginform action="/htmllib/phplib/" onsubmit="encode_url(loginform) ; return fieldcheck(this);" method=post>'},
    {:name=>"login javascript",
:text=>'<script language=javascript src="/htmllib/js/preop.js"></script>'},
    {:text=>"<title> HyperVM 2.0 </title>"},
    {:text=>"<title> Kloxo </title>"},
    {:text=>"<title> Lxadmin </title>"},
    {:text=>'/htmllib/js/preop.js'},
    {:text=>'<img id=main_logo width=84 height=23 src="/img/hypervm-logo.gif">'},
    {:text=>'@import url("/htmllib/lib/admin_login.css");'},
    {:text=>'HyperVM'},
    {:text=>'src="/img/hypervm-logo.gif'}
]
end
