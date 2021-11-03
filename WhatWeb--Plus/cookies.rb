Plugin.define do
name "Cookies"
authors [
  "Andrew Horton",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.5"
description "Display the names of cookies in the HTTP headers. The values are not returned to save on space."
passive do
	m=[]
	unless @headers["set-cookie"].nil? or @headers["set-cookie"].empty?
		@headers["set-cookie"].split("\n").each do |cookie|
			m << { :string=>cookie.split("=")[0] } if cookie =~ /=/
		end
		if @headers["set-cookie"].to_s =~ /path=\/home[\d]*\/([^\/]+)\/public_html\//
			m << { :account=>@headers["set-cookie"].to_s.scan(/path=\/home[\d]*\/([^\/]+)\/public_html\//).flatten }
			m << { :filepath=>@headers["set-cookie"].to_s.scan(/path=(\/home[\d]*\/[^\/]+\/public_html\/)/).flatten }
		end
	end
	m
end
matches [
    {:search=>"headers", :text=>'set-cookie'}
]
end
