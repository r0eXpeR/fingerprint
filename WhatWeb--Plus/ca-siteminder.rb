Plugin.define do
name "CA-SiteMinder"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CA SiteMinder - Web Access Management"
website "http://www.ca.com/us/web-access-management.aspx"
dorks [
'inurl:"smpwservicescgi.exe" ext:exe',
'ext:fcc inurl:"siteminderagent/forms/login.fcc"'
]
matches [
    {:regexp=>/<td><img alt="Logo" src="(\/)?(siteminderagent\/)?(pw\/|pwcgi\/|pwserv\/)?siteminder_logo\.gif" height="44"><\/td><\/tr><\/table>/},
    {:regexp=>/\/\* SiteMinder Login Form CGI\s+Copyright \(C\) 1999,2000 Netegrity, Inc\. All rights reserved\./},
    {:text=>'<!-- SiteMinder Encoding'},
    {:text=>'<!-- SiteMinder Encoding=ISO-8859-1; -->'},
    {:text=>'<!-- SiteMinder Encoding=UTF-8; -->'},
    {:text=>'<tr><td></td></tr></table></td></tr></table></center></div><!--</form> --></body></html>'},
    {:url=>"/siteminderagent/forms/login.fcc", :text=>'<title>SiteMinder Password Services</title>'}
]
end
