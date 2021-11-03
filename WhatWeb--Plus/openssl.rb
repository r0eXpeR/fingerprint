Plugin.define do
name "OpenSSL"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "The OpenSSL Project is a collaborative effort to develop a robust, commercial-grade, full-featured, and Open Source toolkit implementing the Secure Sockets Layer (SSL v2/v3) and Transport Layer Security (TLS v1) protocols as well as a full-strength general purpose cryptography library."
website "http://www.openssl.org/"
matches [
    {:regexp=>/OpenSSL/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'OpenSSL'},
    {:search=>'headers[server]',:offset=>1, :regexp=>/OpenSSL(?:.([\d.]+[a-z]?))?/},
    {:version=>/[^\r^\n]*OpenSSL\/([^\s^\r^\n]+)/, :search=>"headers[server]"}
]
end
