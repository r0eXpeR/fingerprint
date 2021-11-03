Plugin.define do
name "GoServe"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "GoServe - A Web and Gopher Server for OS/2. SRE-http is a highly configurable http server which requires GoServe"
website "http://www2.hursley.ibm.com/goserve"
matches [
    {:module=>/^GoServe for OS\/2, version [^\s^;]+; (SRE-http [\d\.]+)$/, :search=>"headers[server]"},
    {:regexp=>/^GoServe/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'GoServe'},
    {:version=>/^GoServe for OS\/2, version ([^\s^;]+); SRE-http [\d\.]+$/, :search=>"headers[server]"},
    {:version=>/^GoServe\/([^\s]+)$/, :search=>"headers[server]"}
]
end
