Plugin.define do
name "Novell-NetWare"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Novell NetWare server."
website "http://www.novell.com/"
dorks [
'intitle:"NetWare Server" "NetWare Management Portal Version"'
]
matches [
{ :text=>'</HEAD><BODY><font size=+2><p>Unauthorized!</font><font size=+1><p>Please login using a full NDS name and context (example: .user.engineering.acme_corp.)</font></BODY></HTML>' },
{ :regexp=>/<TITLE>NetWare Server [^<]+<\/TITLE><LINK REL=stylesheet TYPE=text\/css HREF=\/SYS\/LOGIN\/portal\.css>/ },
{ :text=>'<APPLET CODE=NWSHealth.class NAME="NWServerHealth" CODEBASE=/SYS/Login width=38 height=99>' },
{ :url=>"/", :version=>/<br>&nbsp;&nbsp;<font color=teal size=-1><B>Novell (NetWare|Small Business Suite) ([^<]+)<\/B><\/font><br>/, :offset=>1 },
{ :url=>"/", :module=>/&nbsp;&nbsp;<font color=teal size=-1><b>(Server Version [\d\.]+ revision [A-Z]),[\s]+([A-Z][a-z]+ [\d]{1,2}, [\d]{4}|[\d]{1,4} [A-Z][a-z]+ [\d]{1,4})<\/B><\/font><br>/ },
{ :url=>"/", :module=>/&nbsp;&nbsp;<font color=teal size=-1><b>NetWare (Management Portal Version [^,]+),[\s]+([A-Z][a-z]+ [\d]{1,2}, [\d]{4}|[\d]{1,4} [A-Z][a-z]+ [\d]{1,4})<\/B><\/font><br>/ },
{ :url=>"/TOP.HTML", :text=>'<TABLE WIDTH="100%"><TR><TD ALIGN=LEFT VALIGN=TOP><APPLET CODE="NWSHealth.class" NAME="NWServerHealth" CODEBASE="/SYS/Login" width=33 height=52>' },
{ :url=>"/TOP.HTML", :version=>/<TD ALIGN=RIGHT VALIGN=TOP><font color="#524a18" size=-1><B>Novell NetWare ([^<]+)<\/B>/ },
{ :url=>"/TOP.HTML", :module=>/<font color="#524a18" size=-1><b>(Server Version [\d\.]+ revision [A-Z]),[\s]+([A-Z][a-z]+ [\d]{1,2}, [\d]{4}|[\d]{1,4} [A-Z][a-z]+ [\d]{1,4})<\/B><\/font><BR>/ },
{ :url=>"/TOP.HTML", :module=>/<font color="#524a18" size=-1><b>NetWare (Management Portal Version [\d\.]+ revision [A-Z]),[\s]+([A-Z][a-z]+ [\d]{1,2}, [\d]{4}|[\d]{1,4} [A-Z][a-z]+ [\d]{1,4})<\/B><\/font><BR>/ },
]
passive do
	m=[]
	if @headers["server"] =~ /^NetWare/
		if @headers["server"] =~ /^NetWare HTTP Stack$/
			m << { :name=>"HTTP Server Header" }
		end
		if @headers["server"] =~ /^NetWare-Enterprise-Web-Server\/([^\s]+)$/
			m << { :version=>"#{$1}" }
		end
	end
	m
end
end
