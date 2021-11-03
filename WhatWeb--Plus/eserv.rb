Plugin.define do
name "Eserv"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Eserv - Mail Server - SMTP/POP3/IMAP/HTTP"
website "http://www.eserv.ru/"
matches [
    {:search=>"headers", :text=>'Eserv'},
    {:search=>"headers[server]", :version=>/^Eserv\/([^\s]+)/},
    {:text=>'content="Eserv'},
    {:version=>/<meta name="generator" content="Eserv\/([^\s^"]+)" \/>/},
    {:version=>/<span id='powered_by'>[^<]+<a href="http:\/\/www\.eserv\.ru\/"><span itemprop="name">Eserv<\/span><\/a>\/([^\s]+)/}
]
end
