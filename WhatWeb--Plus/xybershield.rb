Plugin.define do
name "XyberShield"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "XyberShield is a web-based, Software as a Service web application security solution delivered as an on-demand service. XyberShield utilizes individual, specialized security modules to defend against the top web application vulnerabilities and OWASP-defined attacks, as well as aid companies pursuing PCI 6.6 compliance requirements."
website "https://www.xybershield.com/default.aspx"
matches [
{ :search=>"headers[set-cookie]", :regexp=>/XyberShieldSession=[^\s]+;/ },
{ :search=>"headers[set-cookie]", :regexp=>/XyberShieldStatus=[^\s]+;/ },
]
end
