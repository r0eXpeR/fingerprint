Plugin.define do
name "Ricoh-Photocopier"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Ricoh photocopier web interface"
website "http://www.ricoh.com/"
matches [
{ :text=>'<table width="100%" border="0" cellspacing="0" cellpadding="0" style="background:url(/images/settingDivision.gif) repeat-x bottom;">' },
{ :text=>'<meta http-equiv="refresh" content="1; URL=/web/guest/en/websys/webArch/message.cgi?messageID=MSG_JAVASCRIPTOFF&buttonURL=/../../../">' },
{ :url=>"/web/guest/en/websys/webArch/header.cgi", :model=>/<span class="modelName">([^<]+)<\/span>/ },
{ :url=>"/web/guest/en/websys/webArch/topPage.cgi", :model=>/<td nowrap align="">Device Name<\/td>[\s]+<td nowrap>:<\/td>[\s]+<td nowrap>([^<]+)<\/td>/ },
{ :url=>"/web/guest/en/websys/webArch/topPage.cgi", :string=>/<td nowrap align="">Host Name<\/td>[\s]+<td nowrap>:<\/td>[\s]+<td nowrap>([^\s^<]+)<\/td>/ },
{ :url=>"/web/guest/en/websys/netw/getInterface.cgi", :string=>/<td (xmlns:axsl="[^"]+" )?nowrap align="left" width="150">MAC Address<\/td>[\s]+<td xmlns:axsl="http:\/\/localhost" nowrap>:<\/td>[\s]+<td nowrap>([^\s^<]+)<\/td>/, :offset=>1 },
{ :url=>"/web/guest/en/websys/status/configuration.cgi", :model=>/<td nowrap align="">Model Name<\/td>[\s]+<td nowrap>:<\/td>[\s]+<td nowrap>([^<]+)<\/td>/ },
{ :url=>"/web/guest/en/websys/status/configuration.cgi", :string=>/<td nowrap align="left">Total Memory<\/td>[\s]+<td nowrap>:<\/td>[\s]+<td nowrap>([^\s^<]+)<\/td>/ },
]
passive do
	m=[]
	if @headers["set-cookie"] =~ /^cookieOnOffChecker=on;/
		m << { :name=>"cookieOnOffChecker Cookie" }
	end
	m
end
end
