Plugin.define do
name "Apache"
authors [
  "Andrew Horton",

  "Brendan Coles <bcoles@gmail.com>",

]
version "0.8"
description "The Apache HTTP Server Project is an effort to develop and maintain an open-source HTTP server for modern operating systems including UNIX and Windows NT. The goal of this project is to provide a secure, efficient and extensible server that provides HTTP services in sync with the current HTTP standards."
website "http://httpd.apache.org/"
dorks [
'intitle:"Test Page for the Apache HTTP Server on Fedora Core" intext:"Fedora Core Test Page"',
'intitle:"Welcome to Your New Home Page!" "by the Debian release"',
'intitle:"Test Page for Apache" "It Worked!"'
]
matches [
    {:certainty=>75, :module=>"mod_security", :regexp=>/^NOYB$/, :search=>"headers[server]"},
    {:certainty=>75, :name=>"htacess WWW-Authenticate realm", :search=>"headers[www-authenticate]", :regexp=>/Basic realm="htaccess password prompt"/},
    {:name=>"This IP is being shared among many domains.", 
:text=>"<body><center>This IP is being shared among many domains.<br>\nTo view the domain you are looking for, simply enter the domain name in the location bar of your web browser.<br>", :string=>"Default"},
    {:regexp=>/^Apache/i,  :search=>"headers[server]", :name=>"HTTP Server Header"},
    {:search=>"headers", :text=>'Server: Apache'},
    {:search=>'headers[server]',:offset=>1, :regexp=>/(?:Apache(?:$|.([\d.]+)|[^.-])|(?:^|\b)HTTPD)/},
    {:text=>"<TITLE>Test Page for the SSL/TLS-aware Apache Installation on Web Site</TITLE>", :string=>"Default"},
    {:text=>"<html><body><h1>It works!</h1></body></html>", :string=>"Default"},
    {:text=>"<html>Apache is functioning normally</html>", :string=>"Default"},
    {:text=>"<title>Test Page for Apache Installation</title>", :string=>"Default"},
    {:text=>"Apache is working on your cPanel<sup>&reg;</sup> and WHM&#8482; Server", :string=>"Default"},
    {:url=>"/icons/apache_pb.gif", :md5=>"48bc8b181b36c9289866a2e30f6afedd"},
    {:url=>"/icons/apache_pb2.gif", :md5=>"36ccabeb1ad841c6af37660c3865a9c9", :version=>"2.x"},
    {:url=>"/icons/apache_pb2.gif", :md5=>"726dac78d3a989a360fc405452a798ee", :version=>"2.2"},
    {:version=>/^Apache\/([\d\.]+)/i, :search=>"headers[server]", :name=>"HTTP Server Header"}
]
passive do
	m=[]
	if @headers["server"] =~ /^Apache/i
		m << { :module=>@headers["server"].scan(/[\s](mod_[^\s^\(]+)/).flatten } if @headers["server"] =~ /[\s](mod_[^\s^\(]+)/
		m << { :module=>@headers["server"].scan(/[\s](proxy_html\/[^\s]+)/).flatten } if @headers["server"] =~ /[\s](proxy_html\/[^\s]+)/
	end
	if @headers["server"] =~ /^WebSnmp Server Httpd\/([\d.]+)$/
		m << { :module=>"WebSnmp/"+@headers["server"].scan(/^WebSnmp Server Httpd\/([\d.]+)$/).flatten.first.to_s }
	end
	m << { :module=>"mod_pagespeed/"+@headers["x-mod-pagespeed"].scan(/^([\d\.]+-[\d]{3})$/).flatten.first.to_s } if @headers["x-mod-pagespeed"] =~ /^([\d\.]+-[\d]{3})$/
	m
end
end
