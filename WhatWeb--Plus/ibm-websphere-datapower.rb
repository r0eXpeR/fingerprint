Plugin.define do
name "IBM-WebSphere-DataPower"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "IBM WebSphere DataPower SOA Appliances are purpose-built, easy-to-deploy network devices that simplify, help secure, and accelerate XML and Web service deployments"
website "https://www-01.ibm.com/software/integration/datapower/"
matches [
    {:search=>"headers", :text=>'x-backside-transport'},
    {:search=>"headers[x-backside-transport]", :string=>/(FAIL|OK)/}
]
end
