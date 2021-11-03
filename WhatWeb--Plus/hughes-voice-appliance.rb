Plugin.define do
name "Hughes-Voice-Appliance"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Hughes VoIP Appliance for HughesNet integration"
website "http://www.hughes.com/"
matches [
{ :text=>'<HTML><HEAD></HEAD><BODY onload="window.location=\'/fs/home.htm\'"></BODY></HTML>' },
{ :text=>'<head><title>HughesNet Appliance Control Center</title></head>' },
{ :url=>"/systeminfo/", :version=>/<td width='50%'>Main\.bin Version<\/td><td width='50%' align='center'>([^<^\s]+)<\/td>/ },
]
end
