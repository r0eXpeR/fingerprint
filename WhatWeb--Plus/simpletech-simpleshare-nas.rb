Plugin.define do
name "SimpleTech-SimpleShare-NAS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Whether it's photos and music, or business presentations and financial data, your files are valuable and must be kept safe, accessible and easily shared with others. SimpleShare Network Attached Storage enables you to do it all."
website "http://www.simpleshare.com/"
passive do
	m=[]
	if @headers["server"] =~ /httpd/
		m << { :status=>401, :name=>"SimpleShare WWW-Authenticate Realm" } if @headers["www-authenticate"] =~ /Basic realm="SimpleShare \(default user name is admin and password is simple\)"/
	end
	m
end
end
