Plugin.define do
name "Sun-Java-System-Calendar-Express"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sun Java System Calendar Server is Sun's calendar (scheduling) server."
website "http://www.sun.com/software/products/calendar_srvr/"
dorks [
'intitle:"Sun Java[tm] System Calendar Express"'
]
matches [
{ :version=>/<title>Sun Java\[tm\] System Calendar Express ([^<]+)<\/title>/ },
{ :text=>'<TITLE>Sun Java[tm] System Calendar Express</TITLE>' },
{ :text=>'<img src="imx/login-logo.gif" width="186" height="79" alt="Sun Microsystems, Inc.">' },
{ :url=>"/imx/login-logo.gif", :md5=>"b86a7d65b64efa500048d9fc2840c390" },
]
end
