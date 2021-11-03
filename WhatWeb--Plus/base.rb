Plugin.define do
name "BASE"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Basic Analysis and Security Engine (BASE) - front end for the snort IDS system."
website "http://base.secureideas.net/"
dorks [
'"The following pages will prompt you for set up information to finish the install of BASE." intitle:"Basic Analysis and Security Engine (BASE)"',
'intitle:"Basic Analysis and Security Engine (BASE)" "Built on ACID by Roman Danyliw" "Login" "Password"'
]
matches [
    {:search=>'body', :regexp=>/thebase\.in.js/},
    {:text=>'<!-- Basic Analysis and Security Engine (BASE) -->'},
    {:text=>'mailto:base@secureideas.net'},
    {:version=>/<!-- Basic Analysis and Security Engine \(BASE\) ([\d\.]+ \([^\)]+\)) -->/}
]
passive do
	m=[]
	if @body =~ /<tr><td class="setupKey" width="50%">Config Writeable:<\/td><td class="setupValue"><font color='#(336600|FF0000)'>(Yes|No)<\/font><\/td<\/tr>[\s]+<tr><td class="setupKey" width="50%">PHP Version:<\/td><td class="setupValue"><font color='#336600'>([^<]+)<\/font><\/td<\/tr>/

		m << { :string=>"PHP/#{$3}" }
	end
	if @body =~ /<!-- BASE_path = (.+)[\s]+BASE_urlpath = \/.*[\s]+BASE_VERSION = (.+)[\s]+-->/
		m << { :filepath=>"#{$1}" }
		m << { :version =>"#{$2}" }
	end
	m
end
end
