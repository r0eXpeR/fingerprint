Plugin.define do
name "PHPFM"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "PHP-Fusion is a lightweight open source content management system (CMS). It uses PHP and MySQL."
website "http://www.php-fusion.co.uk/"
dorks [
'"powered by PHPFM" -username'
]
matches [
{ :version=>/Powered by <a href='http:\/\/phpfm.zalon.dk\/' target='_new' class='bottom'>PHPFM<\/a> ([\d\.]+)<\/td>/ },
]
end
