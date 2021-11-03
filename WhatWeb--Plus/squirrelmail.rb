Plugin.define do
name "SquirrelMail"
authors [
  "Andrew Horton",

]
version "0.3"
description "Opensource Webmail written in PHP"
website "http://squirrelmail.org"
matches [
    {:name=>"css comment", :text=>'/* avoid stupid IE6 bug with frames and scrollbars */'},
    {:name=>"default title", :text=>"<title>SquirrelMail - Login</title>"},
    {:name=>"js function", :text=>"function squirrelmail_loginpage_onload()"},
    {:regexp=>/<small>SquirrelMail version ([.\d]+)[^<]*<br/,:offset=>1},
    {:search=>"headers", :text=>'SQMSESSID'},
    {:text=>'<b>SquirrelMail Login</b>'},
    {:version=>/<(small|SMALL)>SquirrelMail version ([^<]+)</, :offset=>1,  :name=>"version"}
]
passive do
	m=[]
	m << {:name=>"SQMSESSID cookie" } if @headers["set-cookie"] =~ /SQMSESSID=/i		
	m
end
end
