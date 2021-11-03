Plugin.define do
name "Aurion"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Integrated HR and Payroll software available online, hosted or in-house. [Australian]"
website "http://www.aurion.com.au/"
dorks [
'"Error: JavaScript is not enabled" "Please enable JavaScript in your browser or refer to you internal IT support for assistance."'
]
matches [
    {:text=>'/aurion.js'},
    {:text=>'<!-- Aurion Teal will be used as the login-time default'},
    {:text=>'<!-- Aurion Teal will be used as the login-time default. Shell layouts will replace these after login. -->'},
    {:text=>'<!-- teal.css has stuff needed for div#loading-noscript -->'},
    {:text=>'<br/>Please enable JavaScript in your browser or refer to you internal IT support for assistance.<br/><br/></div>'},
    {:text=>'<meta http-equiv="X-UA-Compatible" content="chrome=1; IE=8; IE=7"> <!-- Stop Internet Explorer from using "Compatability Mode" -->'},
    {:version=>/<title>Aurion V([^\s^<]+)<\/title>[\s]+<link rel="shortcut icon" href="\.\/favicon\.ico" >/}
]
end
