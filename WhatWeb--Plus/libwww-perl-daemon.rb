Plugin.define do
name "libwww-perl-daemon"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Perl CPAN HTTP::Daemon - a simple http server class. Instances of the HTTP::Daemon class are HTTP/1.1 servers that listen on a socket for incoming requests."
website "http://search.cpan.org/~gaas/HTTP-Daemon-6.00/lib/HTTP/Daemon.pm"
matches [
    {:search=>"headers[server]", :version=>/^libwww-perl-daemon\/([^\s]+)/},
    {:search=>'headers[server]',:offset=>1, :regexp=>/libwww-perl-daemon(?:.([\d\.]+))?/}
]
end
