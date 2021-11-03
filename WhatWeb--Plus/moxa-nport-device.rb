Plugin.define do
name "Moxa-NPort-Device"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Moxa serial-to-ethernet NPort device server"
website "http://www.moxa.com/product/nport_device_server_1.htm"
dorks [
'intitle:"NPort web console"'
]
matches [
{ :md5=>"27829d70bb23c465d86b9c643cf534d3", :url=>"/logo.gif" },
{ :md5=>"2f9af91da3dc3f192e26ac8f42db41bd", :url=>"/logo.gif" },
{ :text=>"<HTML><HEAD><TITLE>NPort Web Console</TITLE></HEAD> <FRAMESET rows=57,1* frameborder=NO> <FRAME name=top scrolling=NO target=contents src=top.htm noresize> <FRAMESET cols=200,*> <FRAME name=contents target=main src=contents.htm> <FRAME name=main src=main.htm marginwidth=0 marginheight=0 scrolling=auto> </FRAMESET> <NOFRAMES><BODY background=bg.gif><P>This page uses frame, but your browser doesn't support.</P></BODY> </NOFRAMES> </FRAMESET></HTML>" },
{ :text=>'<HTML><HEAD><TITLE>NPort Web Console</TITLE> <SCRIPT language=' },
{ :text=>'<HTML><HEAD> <LINK href=nport2g.css rel=stylesheet type=text/css><TITLE>Overview</TITLE></HEAD>' },
{ :text=>"</script><BODY onload=window_onload()> <TABLE width=100% border=0 align=center><TR><TD><H2>Welcome to <span id=devlab1></span>'s web console !</H2></TD></TR>" },
]
passive do
	m=[]
	device={};
	device[:model] = []
	device[:mac] = []
	device[:serial] = []
	device[:version] = []
	device[:label] = []
	device[:uptime] = []
	if @base_uri.to_s =~ /\/main\.htm/ and @body =~ /\{set\("modelname", "([^"]+)"\);set\("mac", "([^"]+)"\);set\("serialno", "([^"]+)"\);set\("ver", "([^"]+)"\);setlabel\("([^"]+)"\);uptime\("([^"]+)"\);\}<\/Script>/
		result = @body.scan(/\{set\("modelname", "([^"]+)"\);set\("mac", "([^"]+)"\);set\("serialno", "([^"]+)"\);set\("ver", "([^"]+)"\);setlabel\("([^"]+)"\);uptime\("([^"]+)"\);\}<\/Script>/)[0]
		device[:model] << result[0].to_s
		device[:mac] << result[1].to_s
		device[:serial] << result[2].to_s
		device[:version] << result[3].to_s
		device[:label] << result[4].to_s
		device[:uptime] << result[5].to_s
	end
	if @base_uri.to_s =~ /\/main\.htm/ and @body =~ /\{document.getElementById\("modelname"\).innerHTML="([^"]+)";document.getElementById\("mac"\).innerHTML="([^"]+)";document.getElementById\("serialno"\).innerHTML="([^"]+)";document.getElementById\("ver"\).innerHTML="([^"]+)";setlabel\("([^"]+)"\);uptime\("([^"]+)"\);\}<\/Script>/
		result = @body.scan(/\{document.getElementById\("modelname"\).innerHTML="([^"]+)";document.getElementById\("mac"\).innerHTML="([^"]+)";document.getElementById\("serialno"\).innerHTML="([^"]+)";document.getElementById\("ver"\).innerHTML="([^"]+)";setlabel\("([^"]+)"\);uptime\("([^"]+)"\);\}<\/Script>/)[0]
		device[:model] << result[0].to_s
		device[:mac] << result[1].to_s
		device[:serial] << result[2].to_s
		device[:version] << result[3].to_s
		device[:label] << result[4].to_s
		device[:uptime] << result[5].to_s
	end
	if result and !device.empty? and !device.nil?
		m << { :model=>device[:model].to_s } unless device[:model].nil?
		m << { :string=>"MAC: "+device[:mac].to_s } unless device[:mac].nil?
		m << { :string=>"Serial: "+device[:serial].to_s } unless device[:serial].nil?
		m << { :string=>"Uptime: "+device[:uptime].to_s } unless device[:uptime].nil?
		m << { :firmware=>device[:version].to_s } unless device[:version].nil?
	end
	m
end
end
