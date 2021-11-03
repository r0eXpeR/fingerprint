Plugin.define do
name "DynaWeb-httpd"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "DynaWeb web server. Ships with Sun Microsystem's AnswerBook"
website "http://www.oracle.com/"
passive do
	m=[]
	if @headers["server"] =~ /^dwhttpd\/([^\s]+) \(([^\s;\)]+; [^\s\)]+)\)$/
		m << { :version=>"#{$1}" }
		m << { :string=>"#{$2}" }
	end
	m
end
matches [
    {:search=>"headers", :text=>'dwhttpd'}
]
end
