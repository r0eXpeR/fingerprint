Plugin.define do
name "Avaya-IP-Office"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "IP Office is Avaya's telephone system for small and medium enterprises. IP Office systems can be run in several modes."
website "http://marketingtools.avaya.com/knowledgebase/"
matches [
    {:search=>"headers", :text=>'IPOffice'},
    {:text=>'<html><head><title>IP Office System Status</title><style'},
    {:text=>'About IP Office'},
    {:version=>/<title>About IP Office ([^\s^<]+)<\/title>/},
    {:version=>/^IPOffice\/([^\s]+)$/, :search=>"headers[server]"}
]
end
