Plugin.define do
name "eMeeting-Online-Dating-Software"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Dating Software by eMeeting Ltd"
website "http://www.datingscripts.org/"
dorks [
'"eMeeting Dating Software Version"'
]
matches [
    {:text=>'				<td valign="bottom"><h2>Admin Area Login</h2></td>'},
    {:text=>'/_eMeetingGlobals.js'},
    {:text=>'<a href="http://www.datingscripts.org" alt="Dating Software by eMeeting Ltd" target="_blank">Dating Software Powered by eMeeting Ltd</a>'},
    {:text=>'<html xmlns="http://www.w3.org/1999/xhtml"><head><title>Admin Area Login</title>'},
    {:text=>'eMeeting Dating Software'},
    {:version=>/<p>eMeeting Dating Software <strong>Version ([\d\.]+)<\/strong>/}
]
end
