Plugin.define do
name "Aruba-Mobility-Controller-Config-File"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Aruba's family of mobility controllers are purpose-built network infrastructure devices, designed from the ground up to provide secure, scalable solutions for campus wireless LAN, wired security, branch office deployments, and remote networking. "
website "http://www.arubanetworks.com/products/mobility_controllers.php"
matches [
{ :text=>'logging level warnings stm' },
{ :text=>'packet-capture-defaults tcp disable udp disable sysmsg disable other disable' },
{ :text=>'ids-policy rate-frame-type-param disassoc node-time-interval' },
]
passive do
	m=[]
	if @body =~ /ids-policy rate-frame-type-param disassoc node-time-interval/ or @body =~/logging level warnings stm/ or @body =~ /packet-capture-defaults tcp disable udp disable sysmsg disable other disable/
		if @body =~ /^version ([\d\.]+)/
			version=@body.scan(/^version ([\d\.]+)/).flatten
			m << { :version=>version }
		end
		if @body =~ /^netservice svc-([^\n]+)/
			modules=@body.scan(/^netservice svc-([^\n]+)/).flatten
			m << { :module=>modules }
		end
		if @body =~ /^mgmt-user admin ([^\n]+)/
			accounts=@body.scan(/^mgmt-user admin ([^\n]+)/).flatten
			m << { :account=>accounts }
		end
		if @body =~ /wpa-passphrase ([^\n^\ ]+)/
			accounts=@body.scan(/wpa-passphrase ([^\n^\ ]+)/).flatten
			m << { :account=>"WPA-Passphrase:"+accounts }
		end
	end
	m
end
end
