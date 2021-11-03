Plugin.define do
name "Phoenix-Contact-Device"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Phoenix Contact manufactures industrial automation, interconnection, and interface solutions. It offers terminal blocks, which include relays, signal conditioning, controller system cabling, surge suppression, transition interfaces, and custom interfaces; printed circuit board terminal blocks; controllers and IO; as well as industrial plug connectors."
website "http://www.phoenixcontact.com/"
passive do
	m=[]
	if @headers["server"] =~ /^Phoenix-Contact\/([^\s]+) \(powered by SpiderControl TM\)$/
		m << { :version=>"#{$1}" }
	end
	m
end
end
