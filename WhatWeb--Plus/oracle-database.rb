Plugin.define do
name "Oracle-Database"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Oracle Database"
website "http://www.oracle.com/technetwork/database/enterprise-edition/overview/index.html"
matches [
{ :search=>"headers[server]", :regexp=>/^Oracle XML DB\/Oracle Database$/, :module=>"Oracle XML DB" },
]
end
