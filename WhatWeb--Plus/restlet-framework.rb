Plugin.define do
name "Restlet-Framework"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Restlet is a lightweight, comprehensive, open source REST framework for the Java platform."
website "http://www.restlet.org/"
matches [
    {:search=>"headers", :text=>'Restlet-Framework'},
    {:search=>"headers[server]", :version=>/^Restlet-Framework\/([^\s]+)$/}
]
end
