Plugin.define do
name "MicrosoftOfficeWebServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Microsoft Office Web Server"
website "http://microsoft.com/"
passive do
	m=[]
	m << { :version=>@headers["microsoftofficewebserver"].to_s } unless @headers["microsoftofficewebserver"].nil?
	m
end
end
