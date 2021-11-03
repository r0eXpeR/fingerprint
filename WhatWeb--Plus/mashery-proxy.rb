Plugin.define do
name "Mashery-Proxy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Mashery proxy is our patent pending software that sits between your developers and your API. The proxy intercepts all calls to your API, does some Mashery magic, passes the call on to your API, intercepts the response, does some more Mashery magic and sends the response back to the caller. The proxy is the mechanism for applying the business rules of your choosing to your new API channel."
website "http://support.mashery.com/SolutionOverview"
passive do
	m=[]
	m << { :name=>"HTTP Server Header" } if @headers["server"] =~ /^Mashery Proxy$/
	m << { :string=>@headers["x-mashery-responder"].to_s } unless @headers["x-mashery-responder"].nil?
	m << { :string=>@headers["x-mashery-error-code"].to_s } unless @headers["x-mashery-error-code"].nil?
	m
end
end
