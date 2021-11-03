Plugin.define do
name "Barracuda-Spam-Firewall"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "The Barracuda Spam & Virus Firewall is an integrated hardware and software solution designed to protect your email server from spam, virus, spoofing, phishing and spyware attacks."
website "http://www.barracudanetworks.com/ns/products/spam_overview.php"
matches [
    {:firmware=>/<td align=left class=config_module valign=top><font size=-2 color=#aaaaaa>Serial #[A-Z]+-[A-Z]+-[\d]+<br>Firmware v([\d\.]+) <font color=#ffffff>/},

    {:text=>'/barracuda.css'},
    {:text=>'<a href="http://www.barracudanetworks.com?track=asg"><img src="/images/powered_by.gif" border=0'},
    {:text=>'<title>Barracuda Spam & Virus Firewall: Welcome</title>', :module=>"Virus Firewall"},
    {:text=>'<title>Barracuda Spam Firewall: Welcome</title><link rel="stylesheet" type="text/css" href="/barracuda.css">'},
    {:text=>'<tr><td valign=top width=680 bgcolor="#ffffff" nowrap><table summary ="Logo Row" cellspacing=0 cellpadding=0 border=0><tr><td><a href="http://www.barracudanetworks.com?track=asg" class=transbutton><img src="'},
    {:text=>'Barracuda Spam & Virus Firewall: Welcome'},
    {:text=>'http://www.barracudanetworks.com?a=bsf_product'},
    {:version=>/<link rel="stylesheet" type="text\/css" href="\/barracuda.css\?v=([\d\.]+)">/, :module=>"Virus Firewall"},
    {:version=>/<script language=javascript src="\/js_functions.([\d\.]+).js" type="text\/javascript"><\/script>/}
]
end
