Plugin.define do
name "BlueOnyx"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Server Appliances and Software - BlueOnyx is a Linux distribution (based on CentOS v5.5) which aims at delivering a turnkey server appliance for webhosting. It comes with a web based GUI interface which allows you to manage most aspects of the server, its sites and accounts. BlueOnyx is a modernized fork of BlueQuartz. A lot of improvements and enhancements went into BlueOnyx, including support for Java Servlet Pages, built in web based email, phpMyAdmin and provisions to automatically create MySQL databases and users for each virtual site - Homepages: http://www.solarspeed.net/ & http://www.blueonyx.it/ & http://bluequartz.org/"
dorks [
'"Welcome to the Web Site of" "Use your favorite FTP application to move your website to the web server."',
'(intitle:Login BlueOnyx|intitle:Login BlueQuartz)'
]
matches [
    {:certainty=>25, :regexp=>/<P ALIGN="CENTER"><FONT SIZE="5" COLOR="#000099" FACE="HELVETICA, ARIAL"><B>Welcome to the Web Site of [^\s^<]+<\/B><\/FONT>/},
    {:certainty=>25, :text=>'<META NAME="Copyright" VALUE="Copyright (C) 2000, Cobalt Networks, Inc.  All rights reserved.">'},
    {:certainty=>25, :text=>'var url = "/login.php?expired=true&target="+escape(pathname+top.location.search+top.location.hash);'},
    {:certainty=>75, :regexp=>/EVEN IF SUN HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES\.[\n][\n]You acknowledge that  this software is not designed or intended for use in the design, construction, operation or maintenance of any nuclear facility.[\n]-->/},
    {:certainty=>75, :text=>"<BODY onLoad=\"location='http://'+location.host+'/login/'\">"},
    {:certainty=>75, :text=>'<BODY BGCOLOR="#FFFFFF" onLoad="focuslogin()" onResize="if(navigator.appName == \'Netscape\') location.reload()" LINK="#FFFFFF" VLINK="#FFFFFF">'},
    {:text=>'Login - BlueOnyx'},
    {:text=>'Thank you for using the BlueOnyx'},
    {:version=>'document.write\("\\nThank you for using the BlueOnyx ([^\s]+) Series.\\n"\);'},
    {:version=>/<TITLE>Login - BlueOnyx ([^\s]+) Series - [^<^\s]+<\/TITLE>/}
]
end
