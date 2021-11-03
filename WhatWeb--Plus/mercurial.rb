Plugin.define do
name "Mercurial"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Mercurial is a free, distributed source control management tool."
website "http://mercurial.selenic.com/"
dorks [
'Mercurial summary shortlog changelog graph tags branches files changeset bz2 zip gz'
]
matches [
    {:regexp=>/<div id="powered-by">[\s]+<p><a href="http:\/\/mercurial\.selenic\.com\/" title="Mercurial">/},
    {:text=>'<a href="http://mercurial.selenic.com/" title="Mercurial" style="float: right;">Mercurial</a>'},
    {:text=>'Mercurial repositories index'}
]
end
