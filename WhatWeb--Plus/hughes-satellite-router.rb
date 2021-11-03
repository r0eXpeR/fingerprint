Plugin.define do
name "Hughes-Satellite-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Hughes IPoS (IP over Satellite) router"
website "http://www.hughes.com/ProductsAndTechnology/BroadbandSatelliteSystems/Pages/default.aspx"
dorks [
'inurl:sys_info "Print this page. It will be needed if your system fails."'
]
matches [
    {:model=>/<title>([A-Z]{0,2}[\d]{1,5}[A-Z]?) System Control Center<\/title>/},
    {:search=>"headers", :text=>'HUGHES Terminal'},
    {:search=>"headers[www-authenticate]", :regexp=>/^Basic realm="HUGHES Terminal"$/},
    {:text=>'<frame src=/fs/dynaform/dw_logo.html scrolling=no marginheight=0 marginwidth=0 NORESIZE>'},
    {:text=>'<frame src=/fs/dynaform/dw_logo.html'},
    {:url=>"/fs/dynaform/welcome.html", :model=>/<ctrlCenter style="font-size: 14pt; color: #000000; font-weight: bold">([^\s]+) <\/ctrlCenter>/},
    {:url=>"/sys_info/", :string=>/<\/td><\/tr><tr><td><div class=text>LAN[\d]{1,2} MAC Address:<\/td><td><div class=text>([A-F\d:]{17})<\/td><\/tr>/},
    {:url=>"/sys_info/", :version=>/<\/td><\/tr><tr><td><div class=text>Software Release:<\/td><td><div class=text>([^<^\s]+)<\/td><\/tr>/}
]
end
