Plugin.define do
name "Microsys-PROMOTIC"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Microsys PROMOTIC web interface - PROMOTIC is a complex SCADA object software tool for creating applications that monitor, control and display technological processes in various industrial areas."
website "http://www.promotic.eu/en/promotic/scada-pm.htm"
matches [
{ :search=>"headers[server]", :regexp=>/^Promotic$/ },
{ :text=>'<html><head><title>PROMOTIC Redirection</title></head>' },
]
end
