Plugin.define do
name "CollegiateLink"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CollegiateLink"
website "http://www.collegiatelink.net/"
dorks [
'"Powered by CollegiateLink Version" inurl:"Community?action"'
]
matches [
{ :version=>/Powered by <a href="http:\/\/www\.collegiatelink\.net">CollegiateLink<\/a> Version ([\d\.]+)<\/p><div id="links">CollegiateLink uses / },
{ :text=>'</div></div></div><div class="salink"><span class="shadow"><!----></span></div></div><span class="clearDiv"><!----></span></div></div><span class="clearDiv"><!----></span><script type="text/javascript">' },
]
end
