Plugin.define do
name "AChecker"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AChecker  is an open source Web accessibility evaluation tool. It can be used to review the accessibility of Web pages based on a variety international accessibility guidelines."
website "http://www.atutor.ca/achecker/"
dorks [
'intitle:"AChecker : ATRC Accessibility Checker:"'
]
matches [
    {:text=>'<title>AChecker : ATRC Accessibility Checker: </title>'},
    {:text=>'Checker : Web Accessibility Checker'},
    {:text=>'content="AChecker is a Web accessibility'}
]
passive do
        m=[]
        if @body =~ /	<br \/><h1>Web Accessibility Checker<\/h1>/
		if @body =~ /	<\/td><td><span> Version: ([\d\.]+)<\/span><\/td>/
	                version=@body.scan(/	<\/td><td><span> Version: ([\d\.]+)<\/span><\/td>/)[0][0]
			m << {:version=>version}
       		end
	end
        m
end
end
