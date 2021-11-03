Plugin.define do
name "TimeLive"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TimeLive Time and Expense Tracking - TimeLive Web timesheet suite is an integrated suite for time record, time tracking and time billing software."
website "http://www.livetecs.com/"
dorks [
'intitle:"TimeLive" "TimeLive LogIn" "Username" "Password"'
]
matches [
{ :text=>'<img id="CtlLogin1_Login1_imgCompanyOwnLogo" src="Images/TopHeader.jpg" alt="CompanyLogo" style="height:50px;border-width:0px;" /></td>' },
{ :string=>/<span id="CtlLogin1_Login1_Label1">Copyright .{1,2} 2007 - (20[\d]{2}) Livetecs LLC\. All rights reserved\.<\/span>/ },
{ :version=>/<td style="width: 15%" align=right>[\s]+<span id="CtlLogin1_Login1_VersionLabel">v ([^<^\s]+)<\/span><\/td>/ },
]
end
