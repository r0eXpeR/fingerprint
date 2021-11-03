Plugin.define do
name "AmazonElasticLoadBalancer"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Amazon Elastic Load Balancer"
website "https://aws.amazon.com/elasticloadbalancing/"
matches [
	{ :search => "headers[set-cookie]", :regexp => /AWSELB/, :name=>"AWSELB cookie" },
] 
end
