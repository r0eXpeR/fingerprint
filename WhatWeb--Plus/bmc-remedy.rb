Plugin.define do
name "BMC-Remedy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BMC Remedy Action Request System (also known as Remedy, AR System and ARS) is a client-server software application development environment from BMC Software (originally developed by Remedy Corporation). BMC Remedy Mid-Tier is a server component in the Action Request System for web access."
website "http://www.bmc.com/products/offering/itsm-premise-ondemand.html"
dorks [
'intitle:"Remedy Mid Tier" "User Name" "Password"'
]
matches [
    {:text=>'<!-- Added to prevent iFrame exploit. Need to comment out for portlet to work -->'},
    {:text=>'<!-- common to all login jsps - not localized information -->'},
    {:text=>'<input type="button" name="clear" value="Clear" class="Login" onClick="clearLogin();"><!--;-->'},
    {:text=>'<input type="button" name="clear" value="Clear" onClick="clearLogin();"><!--;-->'},
    {:text=>'Remedy Mid Tier'},
    {:version=>/<title>(BMC )?Remedy Mid Tier ([^\s]+) - (Error page|Login)<\/title>/, :offset=>1 },
    {:version=>/<title>(BMC&nbsp;)?Remedy&nbsp;Mid&nbsp;Tier&nbsp;([^\s]+) - (Error page|Login)<\/title><!--;-->/, :offset=>1}
]
end
