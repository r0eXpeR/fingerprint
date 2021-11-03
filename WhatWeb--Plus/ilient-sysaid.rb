Plugin.define do
name "Ilient-SysAid"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Ilient SysAid IT Help Desk Software"
website "http://www.ilient.com/"
dorks [
'intitle:"SysAid Help Desk Software" "User Name" "Password"'
]
matches [
{ :text=>'</a><u class="LookLikeLink"><span class="LookLikeLink"> by SysAid</span></u>' },
{ :account=>/<a href="ForgotPassword\.jsp\?accountid=([^\s^"]+)" style="color: #363a3d;">/ },
{ :text=>'<p><a href="http://www.ilient.com">Help Desk Software by Ilient</a></p>' },
{ :text=>'<p><a href="http://www.ilient.com">Help Desk Software by SysAid</a></p>' },
]
end
