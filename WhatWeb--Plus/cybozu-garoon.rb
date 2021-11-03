Plugin.define do
name "Cybozu-Garoon"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Cybozu Garoon is a web-based groupware suite integrating key collaboration applications that provide a ready-to-run intranet solution."
website "http://cybozu.com/en/grn/product/"
matches [
    {:search=>"headers", :text=>'Cybozu-WS'},
    {:search=>"headers[server]", :version=>/^Cybozu-WS\/([^\s]+)$/}
]
end
