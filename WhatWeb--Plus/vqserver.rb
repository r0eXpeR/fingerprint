Plugin.define do
name "vqServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "vqServer is multi-platform compatible. vqServer is a personal web server with support for password protection, file uploading, Java servlets and CGI scripts."
passive do
	m=[]
	if @headers["server"] =~ /^vqServer\/([^\s]+) The world's most friendly web server$/
		m << { :version=>"#{$1}" }
	end
	m
end
end
