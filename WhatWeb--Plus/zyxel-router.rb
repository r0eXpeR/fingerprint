Plugin.define do
name "ZyXEL-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.6"
description "This plugin indentifies ZyXEL routers"
website "http://us.zyxel.com/"
website "http://www.zyxel.com/"
dorks [
'intitle:Top "Vantage Service Gateway" -inurl:zyxel',
'"Welcome to the Web-Based Configurator" "Welcome to your router Configuration Interface"'
]
matches [
{ :text=>"<title>.:: Welcome to the Web-Based Configurator::.</title><meta http-equiv='content-type' content='text/html;charset=iso-8859-1'>" },
{ :text=>'<form method="post" action="/Forms/rpAuth_1" onSubmit="LoginClick(document.forms[0].hiddenPassword, document.forms[0].LoginPassword);"><p>&nbsp;</p>' },
{ :text=>'Welcome to your router Configuration Interface<p></p>Enter your password and press enter or click "Login"<p></p><img src="Images/i_key.gif" width="11" height="17"  align="absmiddle"> <strong>' },
{ :model=>/<td align=center><p class="style1">[\r\n\s]*([^<^\s]+)[\s]*<br \/><br \/><\/p><\/td><\/tr><tr>/ },
{ :text=>'<font size="3" color="3366CC" face="Arial"><b><i>Vantage Service Gateway</i>&nbsp;</b></font>', :model=>"VSG" },
{ :text=>'<frameset rows="75,97%,25" framespacing="0" border="0" frameborder="0">', :model=>"VSG" },
{:text=>'loginPassword.value = "ZyXEL ZyWALL Series";' },
{ :url=>"/top.htm", :model=>/<td align="right"><font size="3" color="3366CC" face="Arial"><b><i>(VSG-[\d\ V]+)<\/i>&nbsp;<\/b><\/font><\/td><\/tr>/ },
{:version=>/<td height="40" colspan="4" class="Auth">Prestige ([^<]+)</},
{:model=>/<td height="40" colspan="4" class="Auth">(Prestige)</},
{ :name=>"HTTP Server Header", :regexp=>/^ZyXEL-RomPager/, :search=>"headers[server]" },
{ :name=>"HTTP Server Header", :version=>/^ZyXEL-RomPager\/([^\s]+)$/, :search=>"headers[server]" },
{ :name=>"HTTP Server Header", :regexp=>/^RomPager/, :search=>"headers[server]" },
]
passive do
        m=[]
	if @headers["server"] =~ /^ZyXEL-RomPager/
		m << { :model=>@headers["www-authenticate"].scan(/^Basic realm="(Prestige [^"]+)( Web)?"/)[0][0] } if @headers["www-authenticate"] =~ /^Basic realm="(Prestige [^"]+)( Web)?"/
		m << { :model=>@headers["www-authenticate"].scan(/^Basic realm="([^"^\s]+)"$/) } if @headers["www-authenticate"] =~ /^Basic realm="([^"^\s]+)"$/
	end
	if @headers["server"] =~ /^RomPager/
		m << { :model=>@headers["www-authenticate"].scan(/^Basic realm="(Prestige [^"]+)( Web)?"/)[0][0] } if @headers["www-authenticate"] =~ /^Basic realm="(Prestige [^"]+)( Web)?"/
	end
	if @headers["www-authenticate"] =~ /Basic realm="P-330W EE \(username: admin\)"/ and @headers["server"] =~ /GoAhead-Webs/ and @status.to_s =~ /^401$/
		m << { :model=>"P-330W EE" }
	end
        m
end
end
