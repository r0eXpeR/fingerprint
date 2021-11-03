Plugin.define do
name "RedirectLocation"
authors [
  "Andrew Horton",

]
version "0.2"
description "HTTP Server string location. used with http-status 301 and 302"
passive do
	m=[]
	unless @headers.nil?
		location=nil	
		location=@headers["location"] if @headers.keys.include?("location")
		unless location.nil?
			m << {:name=>"location",:string=>location}
		end
	end
	m
end
end
