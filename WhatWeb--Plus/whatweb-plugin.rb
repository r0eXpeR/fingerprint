Plugin.define do
name "WhatWeb-Plugin"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "This plugin detects instances of WhatWeb plugins. If this plugin is returned then chances are the other results are false positives."
passive do
	m=[]
	if @body =~ /^# redistribution and commercial restrictions. Please see the WhatWeb/ or @body =~ /^# This file is part of WhatWeb and may be subject to/

		if @body =~ /^version "([^\"]+)"/
			m << { :version=>@body.scan(/^version "([^\"]+)"/) }
		end
		if @body =~ /^Plugin.define "([^\"]+)" do/
			m << { :string=>@body.scan(/^Plugin.define "([^\"]+)" do/) }
		end
		if @body =~ /^def ([a-z]+)[\s]?$/
			m << { :module=>@body.scan(/^def ([a-z]+)[\s]?$/) }
		end
	end
	m
end
end
