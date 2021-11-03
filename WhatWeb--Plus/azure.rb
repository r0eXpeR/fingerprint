Plugin.define do
name "AzureCloud"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Windows Azure cloud platform"
website "https://azure.microsoft.com/"
matches [
	{ :search => "headers[set-cookie]", :regexp => /ARRAffinity/, :name=>"ARRAffinity cookie" },
	{ :search => "headers[set-cookie]", :regexp => /WAWebSiteSID/, :name=>"WAWebSiteSID cookie" },
] 
end
