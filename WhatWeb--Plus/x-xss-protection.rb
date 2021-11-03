Plugin.define do
name "X-XSS-Protection"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin retrieves the X-XSS-Protection value from the HTTP header. - More Info: http://msdn.microsoft.com/en-us/library/cc288472%28VS.85%29.aspx"
passive do
	m=[]
	m << { :string=>@headers["x-xss-protection"].to_s } unless @headers["x-xss-protection"].nil?
	m
end
end
