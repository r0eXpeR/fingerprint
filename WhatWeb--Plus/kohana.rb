Plugin.define do
name "Kohana"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Kohana is an elegant HMVC PHP5 framework that provides a rich set of components for building web applications."
website "http://kohanaframework.org/"
matches [
    {:regexp=>/Kohana Framework ([\d.]+)/,:offset=>1, :search=>'headers[x-powered-by]'}
]
passive do
	m=[]
	m << { :name=>"kohanasession cookie" } if @headers["set-cookie"] =~ /kohanasession=[a-z\d]{26}; expires=/
	m << { :name=>"kohanasession_data cookie" } if @headers["set-cookie"] =~ /kohanasession_data=/
	m
end
end
