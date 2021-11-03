Plugin.define do
name "OrangeHRM"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "OrangeHRM - Open Source Human Resource Management Software (HRMS)"
website "http://www.orangehrm.com/"
dorks [
'"OrangeHRM ver" "OrangeHRM Inc." "All rights reserved."'
]
matches [
{ :version=>/<div id="content">\s+<h2>Welcome to the OrangeHRM ver ([^\s]+) Setup Wizard<\/h2>/ },
{ :module=>/<div id="footer"><a href="http:\/\/www\.orangehrm\.com" target="_blank" tabindex="[^"^>]*">OrangeHRM<\/a> (Web Installation Wizard ver [^\s]+) &copy; OrangeHRM Inc/ },
{ :text=>'<input type="hidden" name="hdnUserTimeZoneOffset" id="hdnUserTimeZoneOffset" value="0" />' },
{ :version=>/<div id="divFooter" >\s+<span id="spanCopyright">\s+<a href="http:\/\/www\.orangehrm\.com" target="_blank">OrangeHRM<\/a>\s+ver ([^&]+) &copy; OrangeHRM Inc/ },
{ :version=>/<td align="center"><a href="http:\/\/www\.orangehrm\.com" target="_blank">OrangeHRM<\/a> ver ([^\s]+) &copy; OrangeHRM Inc/ },
]
end
