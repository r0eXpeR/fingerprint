Plugin.define do
name "X-Backend"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin identifies and extracts the value for X-Backend, X-Backend-Server, X-BackendHost and X-Backend-Host from the HTTP headers."
passive do
	m=[]
	m << { :string=>@headers["x-backend"].to_s } unless @headers["x-backend"].nil?
	m << { :string=>@headers["x-backend-server"].to_s } unless @headers["x-backend-server"].nil?
	m << { :string=>@headers["x-backendhost"].to_s } unless @headers["x-backendhost"].nil?
	m << { :string=>@headers["x-backend-host"].to_s } unless @headers["x-backend-host"].nil?
	m
end
end
