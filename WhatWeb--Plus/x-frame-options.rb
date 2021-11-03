Plugin.define do
name "X-Frame-Options"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin retrieves the X-Frame-Options value from the HTTP header. - More Info: http://msdn.microsoft.com/en-us/library/cc288472%28VS.85%29.aspx"
passive do
	m=[]
	m << { :string=>@headers["x-frame-options"].to_s } unless @headers["x-frame-options"].nil?
	m
end
end
