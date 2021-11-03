Plugin.define do
name "ISC-SCADA-Service"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ISC SCADA Service"
passive do
	m=[]
	if @headers["server"] =~ /ISC SCADA Service HTTPserv:00001/
		m << { :name=>"HTTP Server Header" }
		m << { :text=>"<title>ISC SCADA</title>" }
		m << { :text=>'<p>To take full advantage of this web-interface, you must use a frame compatible browser.</p>' }
		m << { :md5=>"3f0d5432fc1a54d284d17939431acf8a", :url=>"/gif/top.gif" }
		m << { :url=>"/html/info.htm", :firmware=>@body.scan(/<td bgcolor="#b4c0cb"><b>&nbsp;Firmware Version&nbsp;<\/b><\/td>[\r\n\s]*<td bgcolor="#f1eee9"> ([\d\.]+) &nbsp;<\/td>/).flatten } if @body =~ /<td bgcolor="#b4c0cb"><b>&nbsp;Firmware Version&nbsp;<\/b><\/td>[\r\n\s]*<td bgcolor="#f1eee9"> ([\d\.]+) &nbsp;<\/td>/

		m << { :url=>"/html/info.htm", :version=>@body.scan(/<td bgcolor="#b4c0cb"><b>&nbsp;Script Version&nbsp;<\/b><\/td>[\r\n\s]*<td bgcolor="#f1eee9"> ([\d\.]+) &nbsp;<\/td>/).flatten } if @body =~ /<td bgcolor="#b4c0cb"><b>&nbsp;Script Version&nbsp;<\/b><\/td>[\r\n\s]*<td bgcolor="#f1eee9"> ([\d\.]+) &nbsp;<\/td>/

		m << { :url=>"/html/info.htm", :string=>@body.scan(/<TD bgcolor="#b4c0cb"><b>&nbsp;MAC-adresse&nbsp;<\/b><\/TD>[\r\n\s]*<TD bgcolor="#f1eee9"> ([^<]+)<\/TD>/).flatten } if @body =~ /<TD bgcolor="#b4c0cb"><b>&nbsp;MAC-adresse&nbsp;<\/b><\/TD>[\r\n\s]*<TD bgcolor="#f1eee9"> ([^<]+)<\/TD>/

	end
	m
end
aggressive do
	m=[]
	if @headers["server"] =~ /ISC SCADA Service HTTPserv:00001/
		m << { :name=>"HTTP Server Header" }
		target = URI.join(@base_uri.to_s,"/html/info.htm").to_s
		status,url,ip,body,headers=open_target(target)
		m << { :url=>"/html/info.htm", :firmware=>body.scan(/<td bgcolor="#b4c0cb"><b>&nbsp;Firmware Version&nbsp;<\/b><\/td>[\r\n\s]*<td bgcolor="#f1eee9"> ([\d\.]+) &nbsp;<\/td>/).flatten } if body =~ /<td bgcolor="#b4c0cb"><b>&nbsp;Firmware Version&nbsp;<\/b><\/td>[\r\n\s]*<td bgcolor="#f1eee9"> ([\d\.]+) &nbsp;<\/td>/

		m << { :url=>"/html/info.htm", :version=>body.scan(/<td bgcolor="#b4c0cb"><b>&nbsp;Script Version&nbsp;<\/b><\/td>[\r\n\s]*<td bgcolor="#f1eee9"> ([\d\.]+) &nbsp;<\/td>/).flatten } if body =~ /<td bgcolor="#b4c0cb"><b>&nbsp;Script Version&nbsp;<\/b><\/td>[\r\n\s]*<td bgcolor="#f1eee9"> ([\d\.]+) &nbsp;<\/td>/

		m << { :url=>"/html/info.htm", :string=>body.scan(/<TD bgcolor="#b4c0cb"><b>&nbsp;MAC-adresse&nbsp;<\/b><\/TD>[\r\n\s]*<TD bgcolor="#f1eee9"> ([^<]+)<\/TD>/).flatten } if body =~ /<TD bgcolor="#b4c0cb"><b>&nbsp;MAC-adresse&nbsp;<\/b><\/TD>[\r\n\s]*<TD bgcolor="#f1eee9"> ([^<]+)<\/TD>/

	end
	m
end
matches [
    {:search=>"headers", :text=>'ISC SCADA Service'},
    {:text=>'ISC SCADA'}
]
end
