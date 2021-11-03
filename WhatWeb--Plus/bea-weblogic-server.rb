Plugin.define do
name "BEA-WebLogic-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BEA WebLogic Server is an enterprise-ready Java EE application server that supports the deployment of mission-critical applications in a robust, secure, highly available, and scalable environment."
website "http://download.oracle.com/docs/cd/E13222_01/wls/docs100/index.html"
dorks [
'intitle:"Default BEA WebLogic Server Web Server Index Page"'
]
matches [
    {:search=>"headers[server]", :version=>/^WebLogic Server (.+) [A-Z][a-z]{2} [A-Z][a-z]{2} [\d]{1,2} [\d]{2}:[\d]{2}:[\d]{2}/},
    {:search=>"headers[server]", :version=>/^WebLogic WebLogic (Temporary .+) [\d]{2}\/[\d]{2}\/[\d]{4}/},
    {:search=>"headers[server]", :version=>/^WebLogic( WebLogic)?( Server)? (.+)  [\d]{2}\/[\d]{2}\/[\d]{4}/, :offset=>2},
    {:text=>'<TITLE>Default BEA WebLogic Server Web Server Index Page</TITLE>'},
    {:text=>'<h1>BEA WebLogic Server'},
    {:text=>'<title>Default BEA WebLogic Server Web Server Index Page</title>'},
    {:text=>'WebLogic'},
    {:version=>/<h1>BEA WebLogic Server ([^\s]+)&#153;<\/h1>/}
]
end
