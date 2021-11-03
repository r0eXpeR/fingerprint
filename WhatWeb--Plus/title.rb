Plugin.define do
name "Title"
authors [
  "Andrew Horton",

]
version "0.3"
description "The HTML page title"
passive do
	m=[]
 	if @body =~ /<title>[^<]+<\/title>/i
		title = @body.scan(/<title>([^<]+)<\/title>/i)[0][0]
		if title.include? "\n"
			m << {:name=>"WARNING",:module=>"Title element contains newline(s)!"}
		end
		m << {:name=>"page title",:string=>title.strip}
	end
	m
end
end
