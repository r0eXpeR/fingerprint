Plugin.define do
name "LynxGuide"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Lynx System is a Facility-wide, Network based, Duress and Emergency Notification System. "
website "http://www.lynxguide.com/"
dorks [
'inurl:"cgi/logon.plx"'
]
matches [
{ :text=>'<title>Login to LynxGuide Server</title>' },
{ :text=>'Use subject to <a href="/cgi/help/license.htm">license agreement</a></span>' },
{ :search=>"headers[set-cookie]", :regexp=>/Access_Num=[^;]+;/ },
]
end
