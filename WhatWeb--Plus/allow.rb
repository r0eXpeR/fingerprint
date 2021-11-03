Plugin.define do
name "Allow"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin retrieves the allowed methods from the HTTP Allow header. - More info: http://en.wikipedia.org/wiki/List_of_HTTP_header_fields"
passive do
	m=[]
	m << { :module=>@headers["allow"].to_s } unless @headers["allow"].nil?
	m
end
end
