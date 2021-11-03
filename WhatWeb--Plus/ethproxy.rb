Plugin.define do
name "ethProxy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ethProxy DDoS (Distributed Denial of Service) Proxy solution offers full DDoS protection for a wide-range of HTTP-based attacks without changing providers. Web traffic is filtered through the ethProxy systems and routed back to your host."
website "http://www.ethproxy.com/"
matches [
    {:search=>"headers", :text=>'ethProxy'},
    {:search=>"headers[server]", :regexp=>/^ethProxy$/}
]
end
