Plugin.define do
name "dotclear"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "dotclear - blog"
website "http://dotclear.org/"
dorks [
'"powered by dotclear"'
]
matches [
    {:text=>'<!-- End #blogextra -->'},
    {:text=>'<!-- End #d-content -->'},
    {:text=>'<a href="#search">To search</a>'},
    {:text=>'<p class="post-info-co">'},
    {:text=>'<p>Powered by <a href="http://dotclear.org/">Dotclear</a></p>'},
    {:text=>'Powered by <a href="http://dotclear.org/'}
]
end
