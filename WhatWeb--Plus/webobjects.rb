Plugin.define do
name "WebObjects"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WebObjects is a Java web application server from Apple Inc., and a web application framework that runs on the server."
website "http://www.apple.com/support/webobjects/"
dorks [
'ext:woa'
]
passive do
	m=[]
	m << { :name=>"x-webobjects-loadaverage" } unless @headers["x-webobjects-loadaverage"].nil?
	m << { :name=>"x-apple-application-instance" } unless @headers["x-apple-application-instance"].nil?
	m << { :name=>"x-apple-application-site" } unless @headers["x-apple-application-site"].nil?
	m << { :name=>"x-webobjects-servlet" } unless @headers["x-webobjects-servlet"].nil?
	m << { :name=>"x-webobjects-server-name" } unless @headers["x-webobjects-server-name"].nil?
	m << { :name=>"x-webobjects-request-method" } unless @headers["x-webobjects-request-method"].nil?
	m << { :name=>"x-webobjects-adaptor-version" } unless @headers["x-webobjects-request-method"].nil?
	m << { :name=>"x-webobjects-customenv" } unless @headers["x-webobjects-customenv"].nil?
	m
end
matches [
    {:search=>"headers", :text=>'WebObjects'}
]
end
