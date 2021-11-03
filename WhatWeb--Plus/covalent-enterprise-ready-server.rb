Plugin.define do
name "Covalent-Enterprise-Ready-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "The Covalent Enterprise Ready Server is a stand-alone, manually-managed instance of an Apache 2.0 Web server with Covalent extensions."
website "http://www.covalent.net/resource/documentation/ers/2.1.0/HTML/InstallGuide/installers.html"
matches [
    {:search=>"headers", :text=>'CovalentSNMP'},
    {:search=>"headers[server]", :version=>/(CovalentSNMP\/[^\s]+)/},
    {:search=>"headers[server]", :version=>/secured_by_Covalent\/([^\s]+)/}
]
end
