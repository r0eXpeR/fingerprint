Plugin.define do
name "SpinetiX-Hyper-Media-Player"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SpinetiX HMP100 is the first networked Hyper Media Player appliance dedicated to the professional digital signage industry. In this field it represents for final users, integrators and service providers a better alternative of choice to personal and industrial computers and proprietary dedicated software."
website "http://www.spinetix.com/hmp100"
matches [
{ :regexp=>/<title>HMP100 #[0-9a-z]*: Status<\/title>/, :model=>"HMP100", :string=>"Admin" },
{ :text=>'<h1>SpinetiX HMP100 Web Access</h1></div>', :model=>"HMP100", :string=>"Admin" },
{ :text=>"<img src='images/device_hmp100.jpg' width='550' height='323' alt='SpinetiX HMP100' usemap='#advancedMap'/>", :model=>"HMP100", :string=>"Admin" },
{ :text=>"<link rel='shortcut icon' href='css/ithemeSpinetix_favicon.ico' type='image/x-icon' />", :model=>"HMP100", :string=>"Admin" },
]
passive do
	m=[]
	if @headers["x-spinetix-firmware"] =~ /^([^\r^\n]*)/ and @headers["x-raperca-version"] =~ /^([^\r^\n]*)/
		m << { :firmware=>@headers["x-spinetix-firmware"].scan(/^([^\r^\n]*)/).flatten, :model=>"HMP100" }
		m << { :module=>"raperca/"+@headers["x-raperca-version"].scan(/^([^\r^\n]*)/).flatten, :model=>"HMP100" }
	end
	if @body =~ /<h1>SpinetiX HMP100 Web Access<\/h1><\/div>/ and @body =~ /SpinetiX SA. All rights reserved.<br\/>/ and @body =~ /<tr><td>MAC : <\/td><td>([^<]+)<\/td>/
		m << { :account=>@body.scan(/<tr><td>MAC : <\/td><td>([^<]+)<\/td>/).flatten, :model=>"HMP100", :string=>"Admin" }
	end
	m
end
end
