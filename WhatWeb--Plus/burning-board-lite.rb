Plugin.define do
name "Burning-Board-Lite"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Burning Board 3 is the modern, secure and user friendly solution for your discussion board!"
website "http://www.woltlab.com/products/burning_board/index_en.php"
dorks [
'"Powered by Burning Board" -exploit -dork -johnny'
]
matches [
    {:regexp=>/Powered by <a href="http:\/\/www.woltlab.de[^>]*>Burning Board[\s]*<\/a>/},
    {:text=>'Powered by <b><a href="http://www.woltlab.de'},
    {:text=>'Powered by <b>Burning Board'},
    {:version=>/<p class="copyright"><a href="http:\/\/www.woltlab.com">Forum Software: <strong>Burning Board&reg; ([\d\.]*)<\/strong>, developed by <strong>WoltLab&reg; GmbH<\/strong><\/a><\/p>/},
    {:version=>/Powered by <b><a href="http:\/\/www.woltlab.de" target="_blank">Burning Board ([^<]+)<\/a><\/b>/},
    {:version=>/Powered by <b>Burning Board ([\d\.]+)<\/b>/}
]
end
