Plugin.define do
name "Nette-Framework"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Nette Framework is a powerful framework for rapid and easy creation of high quality and innovative web applications in PHP 5.3"
website "http://nette.org/cs/"
passive do
	m=[]
	m << { :name=>"X-Powered-By" } if @headers["x-powered-by"] =~ /^Nette Framework$/
	m
end
end
