Plugin.define do
name "cInvoice"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Forperfect cInvoice system - web-based invoice system. Requires PHP and MySQL."
website "http://www.forperfect.com/seo/cinvoice.php"
dorks [
'"Powered by cInvoice system"'
]
matches [
    {:regexp=>/\/images\/footer_bg\.gif" width="[\d]{2}%" align="center" cellspacing="1" cellpadding="1"><td class=copyright align="center">/},
    {:text=>'Powered by <a href="http://www.forperfect.com/'},
    {:version=>/<small>Powered by <a href="http:\/\/www\.forperfect\.com\/" class="footerlink">cInvoice system ([\d\.]+)<\/a><\/small>/}
]
end
