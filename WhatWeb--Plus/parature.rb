Plugin.define do
name "Parature"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Parature - web-based customer service software combine"
website "http://www.parature.com/"
dorks [
'"Help Desk and Customer Support Software by Parature" inurl:"ics/support/default.asp"'
]
matches [
{ :text=>'This Website requires your browser to be JavaScript enabled. Please enable JavaScript  and click <a href="/ics/default.asp">here</a> to continue.' },
{ :string=>/<\!\-\- \*\*\*\*\*\* (PRODAPP[^\s]+) *\*\*\*\*\* \-\->/ },
{ :version=>/<!--<script src="\.\.\/ic1Browser\.js\?ver=([^"]+)"><\/script>-->/ },
{ :certainty=>75, :text=>"RedirectPortalURL('/ics/support/custhandler.asp?task=signOut&redirectURL=' + encodeURI('" },
{ :text=>'<frame title="Left Navigation" name="cypLeft" src="KBFolder.asp?deptID=' },
{ :md5=>"5b5120dc4f0bb058180da4361ac8fd70" },
]
end
