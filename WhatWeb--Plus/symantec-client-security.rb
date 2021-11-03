Plugin.define do
name "Symantec-Client-Security"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Symantec Client Security"
website "http://www.symantec.com"
dorks [
'intitle:"Web Deployment Tool" "This browser does not support FRAMESET. Please use Internet Explorer"'
]
matches [
{ :text=>'<!-- Symantec Client Security Web Based Installation -->' },
{ :certainty=>75, :string=>/<META NAME="Copyright" Content="Copyright (20[\d]{2}) Symantec Corporation">/ },
]
end
