Plugin.define do
name "KaZaA"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "This plugin retrieves the KaZaA IP:port combination, network and username from the HTTP headers."
passive do
	m=[]
	m << { :string=>@headers["x-kazaa-ip"] } unless @headers["x-kazaa-ip"].nil?
	m << { :module=>@headers["x-kazaa-network"] } unless @headers["x-kazaa-network"].nil?
	m << { :account=>@headers["x-kazaa-username"] } unless @headers["x-kazaa-username"].nil?
	m
end
end
