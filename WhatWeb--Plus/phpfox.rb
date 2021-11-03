Plugin.define do
name "phpFox"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpFox is a featured packed social networking solution that creates communities with features found on major social networking websites like Facebook and MySpace."
website "http://www.phpfox.com/"
dorks [
'"Powered By phpFox Version"'
]
matches [
{ :version=>/Powered By <a href="http:\/\/www\.phpfox\.com\/"[^>]*>phpFoX<\/a> Version ([\d\.]+)/ },
{ :version=>/<a href="http:\/\/www\.phpfox\.com\/"[^>]*>Powered by phpFoX Version ([\d\.]+)<\/a>/ },
]
passive do
	m=[]
	if @body =~ /<meta name="generator" content="cGhwRm94" \/>/ or @body =~ /<meta name="author" content="phpFox" \/>/
		m << { :name=>"Meta Tags" }
		if @body =~ /<meta name="version" content="([^"]+)" \/>/
			version=@body.scan(/<meta name="version" content="([^"]+)" \/>/).flatten.first
			m << { :version=>Base64.decode64(version).to_s }
		end
	end
	if @headers["set-cookie"] =~ /phpfox[\d]visit=[\d]+;/
		m << { :name=>"phpfox(x)visit cookie" }
	end
	m
end
end
