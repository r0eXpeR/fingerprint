Plugin.define do
name "DeleGate"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "DeleGate is a multi-purpose application level gateway, or a proxy server which runs on multiple platforms (Unix, Windows, MacOS X and OS/2). DeleGate mediates communication of various protocols (HTTP, FTP, NNTP, SMTP, POP, IMAP, LDAP, Telnet, SOCKS, DNS, etc.), applying cache and conversion for mediated data, controlling access from clients and routing toward servers."
website "http://www.delegate.org/delegate/"
matches [
    {:search=>"headers", :text=>'DeleGate'},
    {:version=>/^([^\s]+) \(delay=/, :search=>"headers[delegate-ver]"},
    {:version=>/^DeleGate\/([^\s]+)/, :search=>"headers[server]"}
]
end
