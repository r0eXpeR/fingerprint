Plugin.define do
name "MJNioHttpDaemon"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MJNioHttpDaemon"
matches [
{ :search=>"headers[server]", :version=>/^MJNioHttpDaemon\/([^\s]+)/ },
{ :search=>"headers[set-cookie]", :regexp=>/MJNIOHTTPDSESSIONID=/ },
]
end
