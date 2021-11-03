Plugin.define do
name "Citrix-Access-Gateway"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Citrix Access Gateway is a secure application access solution that provides administrators granular application-level control while empowering users with remote access from anywhere."
website "https://www.citrix.com/English/ps2/products/product.asp?contentID=15005"
dorks [
'intitle:"Citrix Access Gateway" "To continue logon, use a Web browser that supports JavaScript or enable JavaScript in your current browser."'
]
matches [
    {:search=>"headers", :text=>'Cyms-SecS'},
    {:search=>"headers", :text=>'ezisneercsresu='},
    {:search=>"headers[server]", :regexp=>/^Cyms-SecS v[\d\.]+$/},
    {:search=>"headers[set-cookie]", :regexp=>/ezisneercsresu=/},
    {:text=>'<!--CONTENT CONTENT CONTENT CONTENT CONTENT--->'},
    {:text=>'</div><!---end of div c_logon_maincontent-->'},
    {:text=>'<HTML><HEAD><TITLE>Citrix Access Gateway</TITLE>'},
    {:text=>'<link rel="SHORTCUT ICON" href="/vpn/images/AccessGateway.ico" type="image/vnd.microsoft.icon">'},
    {:text=>'Citrix Access Gateway'},
    {:text=>'href="/vpn/images/AccessGateway.ico'}
]
end
