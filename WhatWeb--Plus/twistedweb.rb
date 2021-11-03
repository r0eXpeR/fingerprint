Plugin.define do
name "TwistedWeb"
authors [
  "Andrew Horton", 

]
version "0.1"
description "Twisted web is the HTTP server provided by Twisted, an event-driven networking engine written in Python and licensed under the open source MIT license. Developed by Twisted Matrix Labs. Homepage - https://twistedmatrix.com/"
matches [
    {:search=>'headers[server]',:offset=>1, :regexp=>/TwistedWeb(?:.([\d.]+))?/},
    {:text=>'TwistedWeb'},
    {:version=>/TwistedWeb\/?([^ ]+)?/, :search=>"headers[server]"}
]
end
