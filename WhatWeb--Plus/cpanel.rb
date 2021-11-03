Plugin.define do
name "cPanel"
authors [
  "Andrew Horton",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.5"
description "Site configuration and management software application. Supporting many operating systems while allowing endusers to control every aspect of their webhosting experience."
website "http://www.cpanel.net/"
dorks [
'inurl:":2082/frontend" -demo',
'inurl:":2095/webmail/x3"'
]
matches [
    {:regexp=>/<!-- cPanel/},
    {:regexp=>/<link rel="stylesheet" href="[^>^"]*\/unprotected\/cpanel\/style_optimized\.css" type="text\/css" \/>/},
    {:search=>"headers", :text=>'cprelogin:'},
    {:search=>"headers[server]", :version=>/^cpsrvd\/([\d\.]+)$/},
    {:search=>'headers[server]',:offset=>1, :regexp=>/cpsrvd.([\d.]+)/},
    {:text=>"<title>cPanel&reg;</title>"},
    {:text=>"Apache is working on your cPanel<sup>&reg;</sup> and WHM&#8482; Server"},
    {:text=>'<div id="footer_images"><img src="sys_cpanel/images/powered_by.gif" />'},
    {:text=>'<html><head><META HTTP-EQUIV="refresh" CONTENT="0;URL=/cgi-sys/defaultwebpage.cgi"></head><body></body></html>'},
    {:url=>"/cgi-sys/defaultwebpage.cgi", :text=>'<p class="troubleshoot">It may be possible to restore access to this site by <a href="http://www.cpanel.net/docs/dnscache/cleardns.html">following these instructions</a> for clearing your dns cache.</p>'},
    {:url=>"/img-sys/header.jpg", :md5=>"b0f3863b68ff707c3fb586bd87b4f9c6"},
    {:version=>/<title>cPanel&reg;[\s]{0,2}([\d\.]+)<\/title>/}
]
end
