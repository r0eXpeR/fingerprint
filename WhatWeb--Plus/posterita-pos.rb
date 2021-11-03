Plugin.define do
name "Posterita-POS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Posterita POS is a full web POS for large distribution and multi-site Point of Sale for thousands of users. Posterita POS is built on Adempiere/ERP."
website "http://www.posterita.com/"
dorks [
'"powered by Posterita POS" "POS APPLICATION"'
]
matches [
{ :text=>'<img src="images/newUI/logo.gif" alt="Powered by Posterita POS" width="133px" height="41px" border="0px"/>' },
{ :certainty=>75, :text=>'<!-- chooseApplication.jsp -->' },
{ :version=>/<div class="footer">[\s]+<div class="floatLeft">[\s]+All Contents .[\s]+Posterita 20[\d]{2}[\s]+<b>Version &nbsp;([^\s^<]+)<\/b>[\s]+<\/div>[\s]+<\/div>/ },
]
end
