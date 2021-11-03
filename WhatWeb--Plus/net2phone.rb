Plugin.define do
name "Net2Phone"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Net2Phone CommCenter is software that allows you to make phone calls and send faxes to anywhere in the world."
website "http://www.net2phone.com/"
dorks [
'intitle:"Net2Phone Init Page" "Net2Phone, Inc. All Rights Reserved."'
]
matches [
{ :text=>'<HTML><HEAD><TITLE>Net2Phone Init Page</TITLE>' },
{ :model=>/<P align=center><IMG border=0[\s]+src="([a-zA-Z]{2}[\d]+[a-zA-Z]?)\.gif" width="/ },
]
end
