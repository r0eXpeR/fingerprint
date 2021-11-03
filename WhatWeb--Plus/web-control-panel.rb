Plugin.define do
name "Web-Control-Panel"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Web Control Panel used for CommuniLink hosting"
website "http://communilink.com/"
dorks [
"New Webmail by CommuniLink. Many new features added and support multi-language."
]
matches [
{ :version=>/<TITLE>Web Control Panel Express v([^\s^<]+)<\/TITLE>/ },
{ :url=>"/images/wcpe.gif", :md5=>"941271289a317097d00bc72f93f8c79d", :version=>"3.0" },
{ :string=>/<td width="598" align="CENTER"><font face="Verdana,Arial,Helvetica" size="-2" color="#DFFFDF"><b>Welcome to the <font[\s]+color="yellow">([^<]+)<\/font> Server<\/b><\/font><\/td>/ },
{ :module=>/<td valign="top" class="menu"><strong><a href="\/horde\/imp\/login\.php">([^<]+)<\/a><\/strong><br>New Webmail by CommuniLink\. Many new features added and support multi-language\.<\/td>/ },
{ :text=>'<td><img src="/images/wcpe.gif" width=600 height=57 border=0></td>' },
{ :text=>'<td valign="top"><a href="/cgi-bin/webmail?noframes=1"><img src="images/' },
]
end
