Plugin.define do
name "Python"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Python is a programming language that lets you work more quickly and integrate your systems more effectively. You can learn to use Python and see almost immediate gains in productivity and lower maintenance costs."
website "http://www.python.org/"
passive do
	m=[]
	m << { :version=>@headers["server"].to_s.scan(/[^\r^\n]* Python\/([^\s^\r^\n]+)/).flatten } if @headers["server"].to_s =~ /[^\r^\n]* Python\/([^\s^\r^\n]+)/
	m
end
matches [
    {:search=>"headers", :text=>'Django'},
    {:search=>"headers", :text=>'python'},
    {:search=>'headers[server]', :regexp=>/(?:^|\s)Python(?:.([\d.]+))?/,:offset=>1   }
]
end
