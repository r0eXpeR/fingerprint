Plugin.define do
name "Pogoplug"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Pogoplug is a device that connects your USB drive to the Internet so you can easily share and access your files from anywhere. To set it up, all that is needed is to plug it into a wall socket, connect the device to your router using an etherent cable and plug a USB drive into the other side of the pogoplug. No network setup is required."
website "http://www.pogoplug.com/products.html"
passive do
	m=[]
	if @headers["server"] =~ /^HBHTTP ([A-Z\d]+) - ([\d\.]+) - Linux$/
		m << { :string =>"#{$1}" }
		m << { :version=>"#{$2}" }
	end
	m
end
end
