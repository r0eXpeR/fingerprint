Plugin.define do
name "WampServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WampServer is a Windows web development environment. It allows you to create web applications with Apache, PHP and the MySQL database. It also comes with PHPMyAdmin to easily manage your databases."
website "http://www.wampserver.com/"
passive do
	m=[]
	if @body =~ /<h1><abbr title="Windows">W<\/abbr><abbr title="Apache">A<\/abbr><abbr title="MySQL">M<\/abbr><abbr title="PHP">P<\/abbr><\/h1>/ and @body =~ /<title>WAMPSERVER Homepage<\/title>/
		m << { :name=>"Title and h1 heading" }
		m << { :version=>@body.scan(/<ul class="utility">[\s]*<li>Version ([\d\.]+)[\s]*<\/li>/) } if @body =~ /<ul class="utility">[\s]*<li>Version ([\d\.]+)[\s]*<\/li>/
	end
	m
end
end
