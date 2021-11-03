Plugin.define do
name "HoloCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "HoloCMS. Requires PHP."
dorks [
'"powered by HoloCMS" "Meth0d"'
]
matches [
    {:regexp=>/^Powered by HoloCMS &copy[;]* 2008 Meth0d & Parts by Yifan, sisija/},
    {:text=>'<div id="remember-me-notification" class="bottom-bubble" style="display:none;">'},
    {:text=>'Powered by HoloCMS'},
    {:version=>/<meta name="build" content="([^\ ]+) - [^-]+- HoloCMS" \/>/}
]
end
