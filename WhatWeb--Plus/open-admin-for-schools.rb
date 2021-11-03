Plugin.define do
name "Open-Admin-for-Schools"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Open Admin for Schools is a School Administration Program."
website "http://richtech.ca/openadmin/"
dorks [
'intitle:"Open Admin for Schools" "Open Admin for Schools" "Les Richardson" Main Attendance Discipline Fees Report Cards Timetable Export/Xfer Start/End of Year Help'
]
matches [
{ :version=>/<html><head>[\s]+<title>Open Admin for Schools ([^\s]+) - [^<]+<\/title>/ },
{ :version=>/<tr><th style="padding:0.3em;"><span style="font-size: 120%;">[\s]+Open Admin for Schools ([^\s]+)<\/span> [^<]+ Les Richardson<\/th><\/tr>[\s]+<\/table>/ },
{ :text=>'<form action="/cgi-bin/rptbirthday.pl" method="post" style="display:inline;">' },
{ :text=>'</h2><!--  === Report Section ===  -->' },
{ :text=>'<!-- End of Student Reports Section -->' },
{ :string=>/<!--[\s]+#  Copyright 2001-(20[\d]{2}) Leslie Richardson[\s]+#  This file is part of Open Admin for Schools\./ },

]
end
