Plugin.define do
name "X-Cache"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin identifies the X-Cache HTTP header and extracts the value."
passive do
	m=[]
	if @headers["x-cache"] =~ /(MISS|HIT|NONE) from ([^\r^\n]{1,128})/
		m << { :string=>@headers["x-cache"].to_s.scan(/ from ([^\r^\n]{1,128})/).flatten }
	end
	if @headers["x-cache-lookup"] =~ /(MISS|HIT|NONE) from ([^\r^\n]{1,128})/
		m << { :string=>@headers["x-cache-lookup"].scan(/ from ([^\r^\n]{1,128})/).flatten }
	end
	m
end
end
