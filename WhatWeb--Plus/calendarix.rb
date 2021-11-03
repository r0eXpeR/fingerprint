Plugin.define do
name "Calendarix"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Calendarix is a powerful and easy to use web-based calendar that runs on PHP and MySQL."
website "http://www.calendarix.com/"
dorks [
'intitle:"Calendarix User Login" intext:"Calendarix User Login" "Username" "Password"',
'"powered by Calendarix"'
]
matches [
	{ :regexp=>/powered by <a[^>]*http:\/\/www.calendarix.com[^>]+>Calendarix<\/a>/i },
	{ :text=>"  default : { window.location.href='calendar.php?op=cal&month=9&year=2010&catview=0' ; break;}" },
	{ :text=>"var url = 'cal_popup.php?op=view&id='+event+'&uname=' ;" },
	{ :md5=>"24dde98839b19e595532bb92d99f356a", :path=>"images/calendarix.gif" },
	{ :text=>"<title>Calendarix User Login</title>" },
	{ :version=>/<img src="images\/calendarix.gif" Alt="About Calendarix ([\d\.a-z]+)" border=0 width=88 height=31  \/>/ },
]
end
