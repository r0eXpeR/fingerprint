Plugin.define do
name "PHP-Update"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Open-source Content Management System. Homepage used to be http://www.php-update.co.uk"
dorks [
'"powered by PHP-Update"'
]
matches [
{ :text=>'Powered by <a href="http://www.php-update.co.uk" target="_blank">PHP-Update</a>' },
{ :regexp=>/Powered by <a href=[^>]*http:\/\/www.php-update.co.uk[^>]*>PHP[\ \-]*Update<\/a>/ },
{ :regexp=>/>Powered by PHP-Update<\/a>/i },
{ :text=>'<a href="http://www.php-update.co.uk">Powered by PHP-Update </a>' },
]
end
