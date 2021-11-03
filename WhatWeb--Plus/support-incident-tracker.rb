Plugin.define do
name "Support-Incident-Tracker"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Support Incident Tracker (or SiT!) is a Free Software/Open Source (GPL) web based application which uses PHP and MySQL for tracking technical support calls/emails (also commonly known as a 'Help Desk' or 'Support Ticket System')"
website "http://sitracker.org/"
dorks [
'"SiT! - Login" "Username" "Password" "Forgotten your details"'
]
matches [
{ :text=>"<div id='masthead'><h1 id='apptitle'><span>SiT! Support Incident Tracker</span></h1></div>" },
{ :version=>/<meta name="GENERATOR" content="SiT! Support Incident Tracker v([^"]+)" \/>/ },
{ :text=>"<div class='windowtitle'>SiT! - Login</div>" },
]
passive do
	m=[]
	if @body =~ /<!-- SiT \(Support Incident Tracker\) - Support call tracking system[\s]+Copyright \(C\) (20[\d]{2}-)?(20[\d]{2}) (The Support Incident Tracker Project|Salford Software Ltd\. and Contributors)/
		m << { :string=>@body.scan(/<!-- SiT \(Support Incident Tracker\) - Support call tracking system[\s]+Copyright \(C\) (20[\d]{2}-)?(20[\d]{2}) (The Support Incident Tracker Project|Salford Software Ltd\. and Contributors)/)[0][1] }
		m << { :version=>@body.scan(/<meta name="GENERATOR" content="[^"]+ v([^"]+)" \/>/) } if @body =~ /<meta name="GENERATOR" content="[^"]+ v([^"]+)" \/>/
	end
	m << { :name=>"SiTsessionID Cookie" } if @headers["set-cookie"] =~ /SiTsessionID=[^;^\s]+/
	m
end
end
