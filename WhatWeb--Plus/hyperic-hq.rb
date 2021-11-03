Plugin.define do
name "Hyperic-HQ"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Hyperic HQ - platform for custom web application monitoring and performance management in physical, virtual, and cloud environments."
website "http://www.vmware.com/products/application-platform/vfabric-hyperic.html"
dorks [
'intitle:"Sign In - Hyperic" "Please enter your username and password to sign in"'
]
matches [
{ :url=>"/ui_docs/DOC/index.html", :version=>/<title>DOCS\d+ \(vFabric Hyperic ([^\)]+)\)/ },
{ :text=>'<a id="screencastLink" href="http://www.hyperic.com/demo/screencasts.html" target="_blank" title="Screencasts">' },
{ :search=>"headers[location]", :regexp=>/\/app\/login;jsessionid=/ },
]
end
