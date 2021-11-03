Plugin.define do
name "PHP-Hosting-Directory"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP Hosting Directory"
website "http://www.jnshosts.com/php-hosting-directory.html"
dorks [
'"powered by PHP Hosting Directory 2.0" -Vulnerability'
]
matches [
{:version=>/<title>PHP Hosting Directory ([\d\.]+) Powered by JnSHosts\.com<\/title>/ },
{:version=>/<a href="http:\/\/www.jnshosts.com\/php-hosting-directory-([\d\.]+).php"[^>]+>PHP Hosting Directory<\/a>/ },
{:version=>/<font size="6"><b>PHP Hosting Directory ([\d\.]+)<\/b><\/font>/ },
]
end
