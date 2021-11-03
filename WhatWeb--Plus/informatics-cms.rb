Plugin.define do
name "Informatics-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Informatics custom Content Management System (CMS)"
website "http://www.informaticsinc.com/Content/Services/Web-Design-and-Development/Content-Management-Systems.aspx"
dorks [
'"Web Application by Informatics, Inc."'
]
matches [
    {:regexp=>/Web Application by <a href="http:\/\/www\.(ia-informatics|informaticsinc)\.com" [^>]*target="_blank"><b>Informatics, Inc\.<\/b><\/a>/},
    {:search=>"headers[set-cookie]", :regexp=>/[\d]+=HTMLTitle=[^\s]*&OrgName=[^\s]+&EmailThankYou=[^\s]*&DefaultIdPage=[^\s]+&State=/},
    {:text=>'<meta name="author" content="Informatics, Inc.">'},
    {:text=>'content="Informatics'}
]
end
