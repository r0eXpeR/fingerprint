Plugin.define do
name "Micro-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Micro CMS"
website "http://www.micro-cms.com/"
dorks [
'"Powered by Micro CMS"'
]
matches [
{ :regexp=>/<div class="footer"><div style="float: left;">Powered by <a href="http:\/\/(tpiha.kset.org|www.micro-cms.com)\/">Micro CMS<\/a> \| <a href="/ },
{ :text=>'Powered by <strong><a href="http://microcms.kset.org/">Micro CMS</a></strong><br />' },
{ :certainty=>25, :text=>'" method="post"onsubmit="' },
]
end
