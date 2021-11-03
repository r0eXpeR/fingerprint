Plugin.define do
name "Content-Language"
authors [
  "Peter van der Laan",

]
version "0.1"
description "Detect the content-language setting from the HTTP header."
passive do
	m=[]
	unless @headers["content-language"].nil? or @headers["content-language"].empty?
		m << { :string=>@headers["content-language"].to_s }
	end
	m
end
end
