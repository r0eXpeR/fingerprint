Plugin.define do
name "Ushahidi"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Ushahidi Platform is a platform for information collection, visualization and interactive mapping."
website "http://www.ushahidi.com/"
matches [
    {:md5=>"7350c3f75cb80e857efa88c2fd136da5", :url=>"/favicon.ico"},
    {:regexp=>/.js.ushahidi\.js$/, :search=>'body'}
]
passive do
	m=[]
	m << { :name=>"ushahidi cookie" } if @headers["set-cookie"] =~ /ushahidi=[^;]+;/
	m << { :name=>"ushahidi_data cookie" } if @headers["set-cookie"] =~ /ushahidi_data=[^;]+;/
	m
end
end
