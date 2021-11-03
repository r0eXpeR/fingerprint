Plugin.define do
name "CERVIS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Community Event Registration and Volunteer Information System (CERVIS) is the most complete and customizable web-based volunteer management software available."
website "https://www.cervistech.com/"
dorks [
'"powered by CERVIS" "Contact Us" inurl:"console.php" inurl:"console_id"'
]
matches [
{ :text=>'<a href="http://www.cervistech.com" target="_blank"><img src="/acts/images/cervis_logo_sm.png" align=\'absmiddle\' border="0" />Powered by CERVIS</a>' },
{ :string=>/<meta name="title" content="(Volunteer)? Opportunities and Event Registration ([^"]+)" \/>/, :offset=>1 },
]
end
