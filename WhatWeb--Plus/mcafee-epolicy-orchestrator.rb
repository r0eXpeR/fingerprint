Plugin.define do
name "McAfee-ePolicy-Orchestrator"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "McAfee ePolicy Orchestrator (ePO) - unified security management"
website "http://www.mcafee.com/us/products/epolicy-orchestrator.aspx"
dorks [
'inurl:"/core/orionSplashScreen.do" "Log On to ePolicy Orchestrator" "User name" "Password" "Language"'
]
matches [
{ :version=>/<title>\s+ePolicy Orchestrator ([^\s]+ \(Build: \d+\))\s+<\/title>/ },
{ :url=>"/EPOCore/images/epo-logo-login.gif", :md5=>"aa4beb20b354c761257271e86e9ec92b", :version=>"4.x" },
{ :search=>"headers[server]", :regexp=>/^Undefined$/ },
]
end
