Plugin.define do
name "Request-Tracker"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Request Tracker (RT) is an open-source issue tracking system which thousands of organizations use for bug tracking, help desk ticketing, customer service, workflow processes, change management, network operations, youth counselling and even more."
website "http://bestpractical.com/rt/ - RT for Incident Response (RTIR) is an open source incident handling system targeted for computer security teams."
website "http://bestpractical.com/rtir/ - RT FAQ Manager (RTFM) is a knowledge management tool tightly integrated with RT which enables an organization to easily capture and share its employees' collected wisdom."
website "http://bestpractical.com/rtfm/"
dorks [
'intitle:"Login" "Best Practical Solutions, LLC" "corporate logo RT for"'
]
matches [
{ :url=>"/NoAuth/images/favicon.png", :md5=>"1e35f1aa90c98ca2bab85c26ae3e1ba7" },
{ :text=>'<link rel="stylesheet" href="/NoAuth/webrtfm.css" type="text/css" />', :module=>"FAQ Manager" },
{ :text=>'<link rel="stylesheet" href="/RTIR/NoAuth/webrtir.css" type="text/css">', :module=>"Incident Response" },
{ :text=>'<link rel="shortcut icon" href="/NoAuth/images//favicon.png" type="image/png" />', :module=>"Incident Response" },
{ :text=>'<link rel="shortcut icon" href="/NoAuth/images/favicon.png" type="image/png" />' },
{ :text=>'<link rel="stylesheet" href="/NoAuth/css/print.css" type="text/css" media="print" />' },
{ :certainty=>25, :text=>'<p id="bpscredits">' },
{ :regexp=>/<span class="rtname">RT for ([^<]+)<\/span>/ },
{ :version=>/<div class="titlebox-title">[\s]*<span class="left">[\s]*Login[\s]*<\/span>[\s]*<span class="right">[\s]*([^\s]+)[\s]*<\/span>[\s]*<\/div>/ },
{ :version=>/&#187;&#124;&#171; RT ([^\s]+) Copyright 1996-20[\d]{2} <a href="http:\/\/www\.bestpractical\.com\?rt=([^\s^"^>]+)">Best Practical Solutions, LLC<\/a>\./ },

{ :search=>"headers[set-cookie]", :regexp=>/RT_SID_[^\s^=]+=[a-f\d]{32};/ },
]
end
