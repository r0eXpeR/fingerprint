Plugin.define do
name "Specialix-JETSTREAM"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Specialix JETSTREAM Network Access Server allows authorized remote users to dial into a network to access email; share documents; connect to the Internet; and print documents on the network's printers."
matches [
{ :search=>"headers[server]", :version=>/^Specialix JETSTREAM ([\d\.]+)$/ },
]
end
