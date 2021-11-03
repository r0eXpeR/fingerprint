Plugin.define do
name "Strict-Transport-Security"
authors [
  "Andrew Horton", 

]
version "0.1"
description "
without the security of the HTTPS protocol."
matches [
{ :search=>"headers[Strict-Transport-Security]", :string=>/^(.*)$/ },
]
end
