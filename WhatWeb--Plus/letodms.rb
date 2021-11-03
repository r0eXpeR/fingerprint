Plugin.define do
name "LetoDMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "LetoDMS is an open-source document-management-system based on PHP and MySQL published under the GPL."
website "http://www.letodms.com/"
dorks [
'"letoDMS free document management system - www.letodms.com" "This is a classified area. Access is permitted only to authorized personnel"'
]
matches [
{ :text=>'<div class="disclaimer">This is a classified area. Access is permitted only to authorized personnel. Any violation will be prosecuted according to the national and international laws.</div>' },
{ :text=>'letoDMS free document management system - www.letodms.com</div></body>' },
{ :search=>"headers[location]", :regexp=>/out\/out\.ViewFolder\.php/ },
]
end
