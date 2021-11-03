Plugin.define do
name "ionCube-PHP-Accelerator"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "The ionCube PHP Accelerator is an easily installed PHP Zend engine extension that provides a PHP cache, and is capable of delivering a substantial acceleration of PHP scripts without requiring any script changes, loss of dynamic content, or other application compromises."
website "http://www.php-accelerator.co.uk/"
matches [
    {:search=>"headers", :text=>'x-accelerated-by'},
    {:version=>/^[\s]*PHPA\/([^\r^\n]*)/, :search=>"headers[x-accelerated-by]"}
]
end
