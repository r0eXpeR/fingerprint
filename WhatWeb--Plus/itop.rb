Plugin.define do
name "iTop"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "IT Operations Portal (iTop): a complete open source, ITIL, web based service management tool including a fully customizable CMDB, a helpdesk system and a document management tool."
website "http://sourceforge.net/projects/itop/"
dorks [
'intitle:"iTop Login"'
]
matches [
    {:text=>"<p><b>Error</b>: Unable to read the configuration file: 'config-itop.php'. Please check the access rights on this file.</p>"},
    {:text=>"<p><b>Security Warning</b>: the configuration file 'config-itop.php' should be read-only.</p><p>Please modify the access rights to this file.</p>"},
    {:text=>'<title>iTop Login</title>'},
    {:text=>'href="http://www.combodo.com/itop'},
    {:text=>'iTop Login'},
    {:version=>/<div id="login-logo"><a href="http:\/\/www\.combodo\.com\/itop"><img title="iTop [^\s]+ ([^\s^"]+)" src="\.\.\/images\/itop-logo/}
]
end
