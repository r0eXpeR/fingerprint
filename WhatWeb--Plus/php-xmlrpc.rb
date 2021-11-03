Plugin.define do
name "PHP-XMLRPC"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "XML-RPC for PHP is a library implementing the XML-RPC protocol, written in PHP. It is also known as PHPXMLRPC."
website "http://phpxmlrpc.sourceforge.net/"
dorks [
'"Generated using PHP-XMLRPC" ext:php'
]
matches [
{ :text=>'<meta name="generator" content="XML-RPC for PHP" />' },
{ :version=>/<div class="footer">Generated using PHP-XMLRPC ([\d\.]+)<\/div>/ },
]
end
