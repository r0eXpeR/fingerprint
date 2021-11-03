Plugin.define do
name "c99-Shell"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "c99 PHP Backdoor"
matches [
{ :text=>'Dir: <input type="text" name="directory" method="get"> <input type="submit" value="List Directory"><br><br> eg: /etc/<br>' },
{ :text=>'<center>Php Safe-Mode Bypass (List Directories):     <form action="' },
]
passive do
        m=[]
	if @body =~ /<input type=hidden name=act value="cmd"><input type=hidden name="d" value="\//
		m << { :filepath=>@body.scan(/<input type=hidden name=act value="cmd"><input type=hidden name="d" value="([^\"]+)/) } if @body =~ /<input type=hidden name=act value="cmd"><input type=hidden name="d" value="([^\"]+)/
	end
	m
end
end
