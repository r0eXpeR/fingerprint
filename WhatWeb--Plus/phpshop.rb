Plugin.define do
name "PHPShop"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHPShop - A shopping cart application. Documentation, download, demo, and forums are provided. (PHP,MySQL)"
website "http://code.google.com/p/phpshop/"
dorks [
'"powered by PHPShop"'
]
matches [
    {:certainty=>25, :regexp=>/Powered by phpShop/i},
    {:regexp=>/Powered by <a href="http:\/\/www.phpshop.org"[^>]*>phpShop<\/a>/i},
    {:url=>'/admin/images/left_menu.png', :md5=>'1eb47cb1b95dd9426cb2bcda84b6e844'},
    {:url=>'/install/images/bg-input.png', :md5=>'b70b0a713b98a0c3f5ec15bcb3eebb81'},
    {:url=>'/shopdata/images/error_tips.gif', :md5=>'df4b75d41807fbe7e16fe131070a572a'},
    {:version=>/Powered by <a href="http:\/\/www.phpshop.org"[^>]*>phpShop<\/a>[\r\n\s]+([\d\.]+) /}
]
end
