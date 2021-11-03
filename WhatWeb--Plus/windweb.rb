Plugin.define do
name "WindWeb"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WindWeb Webserver"
matches [
  { :version => /^WindWeb\/([^\s]+)$/, :search => "headers[server]" }
]
end
