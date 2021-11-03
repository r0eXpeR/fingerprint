Plugin.define do
name "APC-InfraStruXure-Manager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Modular, adaptable, on-demand solutions for data centers. InfraStruxure is a scalable and adaptable data center IT room architecture that dramatically reduces time and complexity from concept and design through installation."
website "http://www.apc.com/products/infrastruxure/index.cfm"
matches [
{ :certainty=>75, :text=>'<title>APC | InfraStruXure Manager</title>' },
{ :text=>'<td align="center" width="725" height="72"><img src="images/ldrISX.jpg" alt="ISX Manager" align="left" border="0"/></td>' },
{ :text=>'<td><img src="images/Xlogo_Layer-1.gif" height="327" width="342" align="left"/></td>' },
]
passive do
	m=[]
	if @headers["server"] =~ /^Acme\.Serve/ and @status.to_s =~ /^302$/ and @headers["location"] =~ /^isx\.html$/
		m << { :certainty=>25, :name=>"isx.html redirect" }
	end
	m
end
end
