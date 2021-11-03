Plugin.define do
name "Op5-Statistics"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Op5 Statistics"
website "http://op5.com/"
dorks [
'intitle:"Login to op5 Statistics" "Please enter your op5 Statistics user name and password below"'
]
matches [
{ :text=>'<td colspan="2"><center><img src="/statistics/plugins/op5gui/op5_statistics.gif" border="0" alt=""></center></td>' },
{ :text=>'<title>Login to op5 Statistics</title>' },
]
end
