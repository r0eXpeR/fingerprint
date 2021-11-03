Plugin.define do
name "CoyotePoint-Load-Balancer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "CoyotePoint load balancing device"
website "http://www.coyotepoint.com/products/"
matches [
    {:model=>/^CoyotePoint (L[\d]) Load Balancer$/, :search=>"headers[server]"},
    {:regexp=>/^CoyotePoint/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'CoyotePoint'}
]
end
