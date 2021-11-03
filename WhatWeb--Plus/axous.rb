Plugin.define do
name "Axous"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Axous is an e-shop system for software venders."
website "http://www.axous.com/"
dorks [
'"Powered by Axous" "Valid CSS"'
]
matches [
    {:regexp=>/<meta name="generator" content="Axous V([^"]+)" \/>/},
    {:text=>'<div class="tit2 tit3">Products</div>'},
    {:text=>'content="Axous'},
    {:text=>'title="Axous Shareware Shop'},
    {:version=>/Powered by <a href="http:\/\/www\.axous\.com\/" target="_blank" title="Axous Shareware Shop">Axous ([^\s]+)<\/a> &copy;/}
]
end
