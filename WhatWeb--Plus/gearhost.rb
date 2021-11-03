Plugin.define do
name "GearHost"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "GearHost is a Microsoft Gold Certified Windows Hosting Partner that specializes in complex hosted managed servers, CloudServers and shared Windows Web Hosting Solutions for ASP.NET, ColdFusion, Exchange Business Email and other technologies."
website "http://www.gearhost.com/"
passive do
	m=[]
	m << { :os=>"Windows", :module=>"ASP.NET, ColdFusion, PHP, Perl" } if @headers["hosted-with"] =~ /[\s]*GearHost Inc\. \(www.gearhost.com\)/
	m
end
matches [
    {:search=>"headers", :text=>'GearHost'}
]
end
