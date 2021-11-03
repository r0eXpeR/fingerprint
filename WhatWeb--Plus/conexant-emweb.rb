Plugin.define do
name "Conexant-EmWeb"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "This plugin identifies the Conexant-EmWeb DSL router web interface."
website "http://www.conexant.com/"
dorks [
'"The Login page is where you enter the Broadband User Name and" inurl:"/help.html" intitle:"help"'
]
matches [
    {:md5=>"1ddf1d795d6576316495844f824dc84f", :url=>"/images/banner2.gif", :model=>"Allied Telesyn-iMG634WA"},
    {:md5=>"27bc3ddd5ca0799f0a9e1035f76b390c", :url=>"/images/banner2.gif", :model=>"AT-iMG646BD / AT-iMG606BD"},
    {:search=>"headers", :text=>'Conexant-EmWeb'},
    {:search=>"headers", :text=>'Virata-EmWeb'},
    {:text=>"<TITLE>AT-iMG606BD</TITLE>", :model=>"Allied Telesyn-iMG606BD"},
    {:text=>"<TITLE>AT-iMG634WA</TITLE>", :model=>"Allied Telesyn-iMG634WA"},
    {:text=>"<TITLE>AT-iMG646BD</TITLE>", :model=>"Allied Telesyn-iMG646BD"},
    {:text=>'<h2><a class="lg" href="status.html">Flexor 151</a></h2>', :model=>"Flexor 151"},
    {:text=>'<p class="help_data"><b>Note:</b> If "Checking Firmware Upgrades Automatically" or "Image Upgrade" fails then please contact your service provider.</p>', :url=>"/help.html", :model=>"Allied Telesyn-iMG634A-R2"},
    {:text=>'<table border="1" cellpadding="0" cellspacing="0" scrolling="no" style="border-collapse: collapse"bordercolor="#FFFFFF" width="80%">', :status=>401},
    {:text=>'<td><b>Flexor 151</b> is connected and working properly, for more information', :model=>"Flexor 151"},
    {:text=>'<title>Flexor 151 Home</title>', :model=>"Flexor 151"},
    {:text=>'<tr valign="middle"><td class="tmainhead"><img src="/webconfig/images/blank.gif" width="49" height="10" alt="" hspace="0" vspace="0" align="top" id="logospacer">e-con TDL-3424M Ethernet Router</td></tr>', :model=>"e-con TDL-3424M"},
    {:text=>'Advanced configuration: <a style="font-size: 90%" href="voice.html">Voice Settings</a>&nbsp;&nbsp;&nbsp;<a style="font-size: 90%" href="network.html">Network Settings</a>&nbsp;&nbsp;&nbsp;<a style="font-size: 90%" href="qos.html">QoS Settings</a>', :model=>"Flexor 151"},
    {:version=>/Conexant-EmWeb\/([^\r^\n]+)/, :search=>"headers[server]"},
    {:version=>/Virata-EmWeb\/([^\r^\n]+)/, :search=>"headers[server]"}
]
passive do
	m=[]
	if @headers["server"] =~ /Conexant-EmWeb\/([^\r^\n]+)/ or @headers["server"] =~ /Virata-EmWeb\/([^\r^\n]+)/
		m << { :model=>"e-con "+@body.scan(/<img src="\/webconfig\/images\/logo.gif" alt="LOGO" title="LOGO" hspace="0" vspace="0" width="220" height="45"><\/td><td class="rbtop" width="100%"><h1 class="pname">e-con ([^\s]+) Ethernet Router<\/h1>/).flatten.first } if @body =~ /<img src="\/webconfig\/images\/logo.gif" alt="LOGO" title="LOGO" hspace="0" vspace="0" width="220" height="45"><\/td><td class="rbtop" width="100%"><h1 class="pname">e-con ([^\s]+) Ethernet Router<\/h1>/	
	end
	m
end
aggressive do
	m=[]
	if @headers["server"] =~ /Conexant-EmWeb\/([^\r^\n]+)/ or @headers["server"] =~ /Virata-EmWeb\/([^\r^\n]+)/
		target = URI.join(@base_uri.to_s,"/status/Status_1.htm").to_s
		status,url,ip,body,headers=open_target(target)
		m << { :url=>"/status/Status_1.htm", :model=>"Allied Telesyn-"+body.scan(/<TD WIDTH="30%"><STRONG>Model Type<\/STRONG><\/TD>[\r\n\s]*<TD>([^<]+)<\/TD>/).flatten } if body =~ /<TD WIDTH="30%"><STRONG>Model Type<\/STRONG><\/TD>[\r\n\s]*<TD>([^<]+)<\/TD>/
		m << { :url=>"/status/Status_1.htm", :string=>body.scan(/<TD><STRONG>MAC Address<\/STRONG><\/TD>[\r\n\s]*<TD>([^<]+)<\/TD>/).flatten } if body =~ /<TD><STRONG>MAC Address<\/STRONG><\/TD>[\r\n\s]*<TD>([^<]+)<\/TD>/
		target = URI.join(@base_uri.to_s,"/webconfig/atl/top_frame.html").to_s
		status,url,ip,body,headers=open_target(target)
		m << { :url=>"/webconfig/atl/top_frame.html", :model=>body.scan(/^[\s]+<em>([^<]+)<\/em>/).flatten } if body =~ /^[\s]+<em>([^<]+)<\/em>/
		target = URI.join(@base_uri.to_s,"/ati_header_frame.html").to_s
		status,url,ip,body,headers=open_target(target)
		m << { :url=>"/ati_header_frame.html", :model=>body.scan(/^[\s]+<em>([^<]+)<\/em>/).flatten } if body =~ /^[\s]+<em>([^<]+)<\/em>/
	end
	m
end
end
