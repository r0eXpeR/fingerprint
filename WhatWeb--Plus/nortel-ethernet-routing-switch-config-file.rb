Plugin.define do
name "Nortel-Ethernet-Routing-Switch-Config-File"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Nortel Ethernet Routing Switch Config File"
website "http://products.nortel.com/go/product_index.jsp?locale=en-US&lcid=-1"
passive do
	m=[]
	if @body =~ /qos queue-set-assignment queue-set/
		if @body =~ /^! Software version = v([\d\.]+)/
			version=@body.scan(/^! Software version = v([\d\.]+)/)[0][0]
			m << { :version=>version }
		end
		if @body =~ /^! Model = Ethernet Routing Switch ([^\r^\n]+)/
			model=@body.scan(/^! Model = Ethernet Routing Switch ([^\r^\n]+)/)
			m << { :model=>model }
		end
	end
	m
end
end
