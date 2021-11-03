Plugin.define do
name "x-machine"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin identifies the x-machine and x-machine-id headers and extracts their values."
passive do
	m=[]
	m << { :string=>@headers["x-machine"] } unless @headers["x-machine"].nil?
	m << { :string=>@headers["x-machine-id"] } unless @headers["x-machine-id"].nil?
	m
end
end
