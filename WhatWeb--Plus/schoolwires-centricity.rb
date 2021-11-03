Plugin.define do
name "SchoolWire-Centricity"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 
]
version "0.2"
description "SchoolWire-Centricity is a CMS designed exclusively for K-12 school districts."
website "https://www.schoolwires.com/centricity2"
matches [
	{ :search => "headers[set-cookie]", :regexp => /^SWSessionID/, :name=>"SWSessionID cookie" },
	{ :search => "headers[set-cookie]", :regexp => /^PSDB/, :name=>"PSDB cookie", :certainty => 25 },
	{ :search => "headers[set-cookie]", :regexp => /^PSN/, :name=>"PSN cookie", :certainty => 25 },
] 
end
