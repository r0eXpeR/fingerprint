Plugin.define do
name "HttpOnly"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "If the HttpOnly flag is included in the HTTP set-cookie response header and the browser supports it then the cookie cannot be accessed through client side script - More Info: http://en.wikipedia.org/wiki/HTTP_cookie"
passive do
	m=[]
	unless @headers["set-cookie"].nil? or @headers["set-cookie"].empty?
		if @headers["set-cookie"] =~ /;[\s]*httponly/i
			m << { :string=>@headers["set-cookie"].scan(/^([^;^=]+).*;[\s]*httponly/i) } if @headers["set-cookie"] =~ /^([^;^=]+).*;[\s]*httponly/i
		end
	end
	m
end
matches [
    {:search=>"headers", :text=>'httponly'}
]
end
