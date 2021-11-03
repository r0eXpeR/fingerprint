Plugin.define do
name "Java-Management-Extensions"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Java Management Extensions (JMX) is a Java technology that supplies tools for managing and monitoring applications, system objects, devices (e. g. printers) and service oriented networks. - info: http://en.wikipedia.org/wiki/Java_Management_Extensions"
matches [
{ :regexp=>/[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2},[0-9]+ [DEBUG|INFO]/ },
]
passive do
	m=[]
	if @body =~ /jmx.url=([^,^\}^\s]+)/
		version=@body.scan(/jmx.url=([^,^\}^\s]+)/)[0][0]
		m << {:version=>version}
	end
	if @body =~ /jmx.username=([^,^\}^\s^\n]+)/ and @body =~ /jmx.password=([^,^\}^\s^\n]+)/
		modules=@body.scan(/jmx.username=([^,^\}^\s^\n]+)/)[0][0]+":"+@body.scan(/jmx.password=([^,^\}^\s^\n]+)/)[0][0]
		m << {:module=>modules}
	end
	m
end
end
