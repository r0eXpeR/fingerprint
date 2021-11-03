Plugin.define do
name "Micronet-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Micronet Communications Router"
website "http://www.micronet.com.tw/mod/product/index.php?NodeID=23"
matches [
{ :certainty=>75, :search=>"headers[server]", :version=>/^RCTTools \(SecureSOHO Web configuration Tools\) v([^\s]+)$/ },
{ :url=>"/image/iso-8859-1/logo.jpg", :md5=>"25acf0f5466c0ba42901a0a0b3251f5d", :model=>"SP888B" },
]
end
