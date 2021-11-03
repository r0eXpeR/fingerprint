Plugin.define do
name "Tab-and-Link-Manager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Tab And Link Manager engine is a total replacement for the default vBulletin NavBar"
website "http://www.wolfshead-solutions.com/ws-products/product-1"
dorks [
'"Powered by Tab and Link Manager Version"'
]
matches [
{ :version=>/<div id="footer_copyright" class="shade footer_copyright">Powered by <a href="http:\/\/www\.wolfshead-solutions\.com\/ws-products\/product-1" rel="wsBlank">Tab and Link Manager<\/a> Version ([^<^\s]+)<br \/>Copyright &copy; 20[\d]{2} Wolfshead Solutions\. All rights reserved\.<br \/>/ },
]
end
