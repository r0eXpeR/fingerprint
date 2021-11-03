Plugin.define do
name "EMS-ENTRY-COM"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "EMS-ENTRY-COM is database software that gathers data from Beckmann Zent5 main control panels and payment systems and makes them available as an SQL database. The retrieved data are analysed, reviewed and subsequently transformed into a relational database."
website "http://www.beckmann-gmbh.de/en/products/pc_software/ems_entry_com"
passive do
	m=[]
	if @headers["server"] =~ /^(EMS-Entry|ZENT5) V[\d\.]+ Beckmann-GmbH$/
		m << { :name=>"HTTP Server Header" }
		m << { :version=>@body.scan(/<td width="20%" valign="top" align="right">Application-Version:<br>Ver ([\d\.]+) [\d]{2}\.[\d]{2}.[\d]{4}<\/td>/) } if @body =~ /<td width="20%" valign="top" align="right">Application-Version:<br>Ver ([\d\.]+) [\d]{2}\.[\d]{2}.[\d]{4}<\/td>/
	end
	m
end
matches [
    {:search=>"headers", :text=>'EMS-Entry'},
    {:search=>"headers", :text=>'ZENT5'}
]
end
