Plugin.define do
name "jetNEXUS-Load-Balancer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "jetNEXUS provide leading edge load balancing and traffic management solutions to accelerate application performance and availability, enabling clients to create and deliver resilient and scalable online services."
website "http://www.jetnexus.com/"
passive do
	m=[]
	m << { :name=>"jetNEXUS Header" } if @headers["jetnexus"] =~ /^Streaming Compression/
	m
end
end
