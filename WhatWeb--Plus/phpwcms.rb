Plugin.define do
name "phpwcms"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description " is a robust and simple but yet powerful web based content management system running under PHP and MySQL."
website "http://www.phpwcms.de/"
matches [
{ :text=>'	phpwcms is copyright 2003-2010 of Oliver Georgi. Extensions are copyright of' },
{ :text=>'	created by Oliver Georgi (oliver at phpwcms dot de) and licensed under GNU/GPL.' },
]
passive do
        m=[]
        if @body =~ /phpwcms \| open source web content management system/
		if @body =~ /          Release: ([\d\.\-A-Z]+) [\d\-]+\/\/-->/
			version=@body.scan(/          Release: ([\d\.\-A-Z]+) [\d\-]+\/\/-->/)[0][0]
			m << {:version=>version}
	        end
	end
        m
end
end
