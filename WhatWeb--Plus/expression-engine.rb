Plugin.define do
name "ExpressionEngine"
authors [
  "Andrew Horton",

  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

]
version "0.2"
description "ExpressionEngine is CMS written in PHP. Free and commercial versions."
website "http://expressionengine.com"
dorks [
'"Powered by ExpressionEngine"'
]
matches [
	{:regexp=>/owered by <a href="http:\/\/expressionengine.com\/">ExpressionEngine<\/a>/},
	{ :search => "headers[set-cookie]", :regexp => /^exp_last_visit/, :name=>"exp_last_visit cookie" },
	{ :search => "headers[set-cookie]", :regexp => /^exp_last_activity/, :name=>"exp_last_activity cookie" },
	{ :search => "headers[set-cookie]", :regexp => /^exp_tracker/, :name=>"exp_tracker cookie" },
	{ :search => "headers[set-cookie]", :regexp => /^exp_csrf_token/, :name=>"exp_csrf_token cookie" },
]
aggressive do
	m=[]
	target = URI.join(@base_uri.to_s,"READ_THIS_FIRST.txt").to_s
	status,url,ip,body,headers=open_target(target)
	if body =~ /ExpressionEngine/
		m << {:name=>"readthisfirst txt file" }
	end
	target = URI.join(@base_uri.to_s,"system/updates/ee_logo.jpg").to_s
	status,url,ip,body,headers=open_target(target)
	if status == 200 and body =~ /JFIF/
		m << {:name=>"ee_logo jpg" }
	end
	m
end
end
