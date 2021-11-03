Plugin.define do
name "CommuniGate-Pro"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "CommuniGate Pro provides an integrated platform for Store-and-Forward (E-mail, Calendaring) and Real-Time (VoIP, Video, Instant Messaging, White Boards) communications over IPv4 and IPv6 networks."
website "http://www.communigate.com/cgatepro/"
matches [
    {:search=>"headers", :text=>'CommuniGatePro'},
    {:version=>/^CommuniGatePro\/([^\s]+)$/, :search=>"headers[server]"}
]
end
