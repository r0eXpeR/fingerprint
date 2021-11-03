Plugin.define do
name "RCTTools"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "RCTTools - SecureSOHO Web configuration Tools"
website "[offline] http://www.redsonic.com/"
matches [
{ :search=>"headers[server]", :version=>/^RCTTools \(SecureSOHO Web configuration Tools\) v([^\s]+)$/ },
]
end
