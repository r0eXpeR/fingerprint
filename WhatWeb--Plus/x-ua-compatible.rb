Plugin.define do
name "X-UA-Compatible"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin retrieves the X-UA-Compatible value from the HTTP header and meta http-equiv tag. - More Info: http://msdn.microsoft.com/en-us/library/cc817574.aspx"
matches [
	{ :string=>/<meta http-equiv[\s]*=[^>]*X-UA-Compatible[^>]*[\s]+content[\s]*=[\s]*['|"]?([a-z0-9=]+)[^>]*>/i },
]
passive do
	m=[]
	m << { :string=>@headers["x-ua-compatible"].to_s } unless @headers["x-ua-compatible"].nil?
	m
end
end
