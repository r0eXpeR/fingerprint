Plugin.define do
name "O2Micro-Firewall"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "SifoWorks is a multi-function security gateway system that is based on O2Micro's powerful ASIC design. Apart from its firewall capabilities, SifoWorks is also equipped with several industry-leading security features such as: activating NAT and policy routing concurrently while maintaining line speed processing capability; effective log system; powerful network security mechanism, protection against ARP attacks, content filtering, IDP, DoS / DDoS protection, P2P / IM control, etc."
website "http://www.o2security.com/product/productclass.php?classfiy_sn=73"
matches [
	{ :regexp=>/^O2micro/, :search=>"headers[server]" },
	{ :version=>/^(O2micro|Firewall)\/([\d\.]+)/, :offset=>1, :search=>"headers[server]" },
]
passive do
	m=[]
	if @headers["set-cookie"] =~ /^CGISESSID=01010011111100000000111110010011;/ and @headers["server"] =~ /^(O2micro|Firewall)/
		m << { :name=>"HTTP Server Header and Cookie" }
	end
	m
end
end
