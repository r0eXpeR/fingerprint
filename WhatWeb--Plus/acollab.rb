Plugin.define do
name "ACollab"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ACollab is an accessible, open source, multi-group, Web-based collaborative work environment. ACollab is available as a work groups addon for ATutor 1.4+ , and as a standalone collaborative work environment that will run on its own."
website "http://www.atutor.ca/acollab/"
dorks [
'intitle:"ACollab : Accessible Collaboration Environment:"'
]
matches [
{ :text=>'<title>ACollab : Accessible Collaboration Environment:' },
]
end
