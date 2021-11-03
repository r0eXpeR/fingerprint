Plugin.define do
name "Parallel-Crystal-Load-Balancer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Parallel Crystal load balancing server"
website "http://www.dynalivery.com/products/parallelcrystal/parallelcrystal2_x.html"
matches [
	{ :regexp=>/^Crystal2 BalancerServer/, :search=>"headers[server]" },
	{ :version=>/^Crystal2 BalancerServer ([\d\.]+)$/, :search=>"headers[server]" },
]
end
