Plugin.define do
name "AfterLogic-WebMail-Pro"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "AfterLogic WebMail Pro is a webmail front-end for your existing POP3/IMAP mail server."
website "http://www.afterlogic.com/mailbee/webmail-pro.asp"
dorks [
'"Powered by AfterLogic WebMail Pro" intitle:"AfterLogic WebMail Pro"'
]
matches [
    {:name=>"PHPWEBMAILSESSID cookie", :search=>"headers[set-cookie]", :regexp=>/^PHPWEBMAILSESSID=[^;]+;/},
    {:name=>"PHPWMADMINSESSID cookie", :search=>"headers[set-cookie]", :regexp=>/^PHPWEBMAILSESSID=[^;]+;/},
    {:search=>"headers", :text=>'PHPWEBMAILSESSID'},
    {:text=>'AfterLogic WebMail Pro'},
    {:text=>'Powered by <a href="http://www.afterlogic.com/products/webmail-pro" target="_blank">AfterLogic WebMail Pro</a><br />'},
    {:url=>'/favicon.ico', :md5=>'3067abae7621517c9ba7c1865d6392be'},
    {:url=>'/skins/AfterLogic/gradients.png', :md5=>'5ea6a40fdcd3f038404ae8e6a172bb29'},
    {:url=>'/skins/AfterLogic/mail.png', :md5=>'169834f096810395710bbdafe3606652'},
    {:url=>'/webmail/favicon.ico', :md5=>'3067abae7621517c9ba7c1865d6392be'},
    {:url=>'/webmail/skins/AfterLogic/gradients.png', :md5=>'5ea6a40fdcd3f038404ae8e6a172bb29'},
    {:url=>'/webmail/skins/AfterLogic/mail.png', :md5=>'169834f096810395710bbdafe3606652'},
    {:version=>/AfterLogic Corporation<\/a>\s?<\/div>\s+<!--\s?([\d\.]+)\s?-->\s<\/body>\s<\/html>/},
    {:version=>/AfterLogic Corporation<\/a>\s?<\/div>\s+<\/body>\s<\/html>\s<!--\s?([\d\.]+)\s?-->/}
]
end
