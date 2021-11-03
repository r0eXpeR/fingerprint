Plugin.define do
name "Cisco-Adaptive-Security-Appliance"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Cisco Adaptive Security Appliance (ASA) family of security devices protects corporate networks. It provides users with highly secure access to data - anytime, anywhere, using any device."
website "http://www.cisco.com/web/ANZ/products/security/asa_software.html"
dorks [
'intitle:"Cisco Systems" "Network User Authentication is required"'
]
matches [
    {:regexp=>/<FORM ACTION="\/netaccess\/redirect\.html">\s+<INPUT type=hidden name=sid VALUE=/},
    {:search=>"headers", :text=>'Adaptive Security Appliance HTTP'},
    {:search=>"headers[server]", :regexp=>/^Adaptive Security Appliance HTTP\/1\.1$/},
    {:text=>'<title>Cisco Systems, Inc. Network Access</title>', :certainty=>75}
]
end
