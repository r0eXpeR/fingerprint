Plugin.define do
name "iGuard-Security-System"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "Lucky Technology iGuard security system, based on smart card and biometric fingerprint technology."
website "http://www.lucky-tech.com/p1.php"
dorks [
'"iGuard Security System" "Lucky Technology Ltd.. All rights reserved." "US Patent No.: 6,643,779"'
]
matches [
    {:firmware=>/	<meta content="Lucky-Tech iGuard ([\d\.]{1,5})" name="GENERATOR">/},
    {:search=>"headers", :text=>'iGuard Embedded Web Server'},
    {:text=>'	<TITLE>iGuard Fingerprint Security System</TITLE>'},
    {:text=>'content="Lucky-Tech iGuard'},
    {:url=>"/Admins/Content.vtml", :firmware=>/iGuard Security[^<]+<\/td><\/tr><tr><td>Firmware Version<\/td><td>([^<]+)<\/td>/},
    {:url=>"/Admins/Content.vtml", :string=>/<tr><td>Registered Automatch<\/td><td>([^<]+)<\/td><\/tr>/}
]
passive do
	m=[]
	if @headers['server'] =~ /^iGuard Embedded Web Server\/([^\s]{1,15}) \(([^\s^\)]+)\) (SN:[^\s]+)$/
		m << { :firmware=>"#{$1}" }
		m << { :model   =>"#{$2}" }
		m << { :string  =>"#{$3}" }
	end
	m << { :name=>"WWW-Authenticate Header" } if @headers["www-authenticate"] =~ /Basic realm="iGuard System"/
	m
end
end
