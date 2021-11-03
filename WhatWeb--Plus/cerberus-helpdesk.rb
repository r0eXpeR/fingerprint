Plugin.define do
name "Cerberus-Helpdesk"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Cerberus Helpdesk - fast and flexible web-based platform for business collaboration and automation"
website "http://www.cerberusweb.com/"
dorks [
'inurl:CerberusPublicGUI'
]
matches [
    {:search=>"headers", :text=>'CerberusPublicGUI'},
    {:search=>"headers[set-cookie]", :regexp=>/CerberusPublicGUI=[a-f\d]{32};/},
    {:text=>'<!-- If you have your own stylesheet for HTML elements, you can remove the cerberus-html.css link -->'},
    {:text=>'<!-- If you have your own stylesheet for HTML elements, you can remove the cerberus-html.css link'},
    {:text=>'<td width="519" class="kb_most_viewed_articles">Most Viewed Knowledgebase Articles</td>'}
]
end
