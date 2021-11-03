Plugin.define do
name "X-Host"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin retrieves the X-Host, X-HostName, X-Host-Name and X-Host-IP value from the HTTP header."
passive do
	m=[]
	m << { :string=>@headers["x-host"].to_s } unless @headers["x-host"].nil?
	m << { :string=>@headers["x-host-name"].to_s } unless @headers["x-host-name"].nil?
	m << { :string=>@headers["x-hostname"].to_s } unless @headers["x-hostname"].nil?
	m << { :string=>@headers["x-host-ip"].to_s, :module=>"WonderProxy" } unless @headers["x-host-ip"].nil?
	m
end
end
