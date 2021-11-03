Plugin.define do
name "PROLiNK-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PROLiNK Router"
website "http://www.prolink.co.id/"
dorks [
'"ADSL Router Status" intitle:"PROLiNK ADSL Router" "This page shows the current status and some basic settings of the device"'
]
matches [
{ :text=>'<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->' },
{ :text=>'<title>PROLiNK ADSL Router</title>' },
{ :text=>'<title>RFwell ADSL Router Status</title>' },
{ :text=>'<FRAME SRC="attention.htm" NAME="attention" FRAMEBORDER="NO" SCROLLING="NO" MARGINWIDTH="0" MARGINHEIGHT="0">' },
{ :md5=>"8be83109b0aaabae7737b28e666ba116", :url=>"/images/logo.gif" },
]
passive do
	m=[]
	if @headers["server"] =~ /^Virtual Web/
		m << { :certainty=>25, :name=>"HTTP Server Header" }
		m << { :model=>@body.scan(/<tr bgcolor="#EEEEEE">\s+<td width=40%><font size=2><b>Alias Name<\/b><\/td>\s+<td width=60%><font size=2>PROLiNK ([^<]+)<\/td>\s+<\/tr>/).flatten } if @body =~ /<tr bgcolor="#EEEEEE">\s+<td width=40%><font size=2><b>Alias Name<\/b><\/td>\s+<td width=60%><font size=2>PROLiNK ([^<]+)<\/td>\s+<\/tr>/

		m << { :firmware=>@body.scan(/<tr bgcolor="#EEEEEE">\s+<td width=40%><font size=2><b>Firmware Version<\/b><\/td>\s+<td width=60%><font size=2>([^<]+)<\/td>\s+<\/tr>/).flatten } if @body =~ /<tr bgcolor="#EEEEEE">\s+<td width=40%><font size=2><b>Firmware Version<\/b><\/td>\s+<td width=60%><font size=2>([^<]+)<\/td>\s+<\/tr>/

		m << { :version=>@body.scan(/<tr bgcolor="#DDDDDD">\s+<td width=40%><font size=2><b>DSP Version<\/b><\/td>\s+<td width=60%><font size=2>([^<]+)<\/td>\s+<\/tr>/).flatten } if @body =~ /<tr bgcolor="#DDDDDD">\s+<td width=40%><font size=2><b>DSP Version<\/b><\/td>\s+<td width=60%><font size=2>([^<]+)<\/td>\s+<\/tr>/

		m << { :string=>"MAC:"+@body.scan(/<tr bgcolor="#DDDDDD">\s+<td width=40%><font size=2><b>MAC Address<\/b><\/td>\s+<td width=60%><font size=2>([^<]+)<\/td>\s+<\/tr>/).flatten } if @body =~ /<tr bgcolor="#DDDDDD">\s+<td width=40%><font size=2><b>MAC Address<\/b><\/td>\s+<td width=60%><font size=2>([^<]+)<\/td>\s+<\/tr>/

	end
	m
end
end
