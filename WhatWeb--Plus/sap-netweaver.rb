Plugin.define do
name "SAP-NetWeaver"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "SAP NetWeaver provides the technical foundation for SAP applications. In addition, it delivers a portfolio of enterprise technology that allows you to extend your applications to reach more people and to adopt new processes, devices, and consumption models."
website "http://www.sap.com/platform/netweaver/index.epx"
dorks [
'intitle:"Logon - SAP Web Application Server"'
]
matches [
	{ :name=>"HTTP Server Header", :regexp=>/^SAP (Web|NetWeaver)/, :search=>"headers[server]" },
	{ :string=>/^SAP (Web|NetWeaver) Application Server [\/]?[\ ]?[\(]?([^\)^\r^\n]+)[\)]?/, :offset=>1, :search=>"headers[server]" },
	{ :module=>"J2EE", :version=>/^SAP J2EE Engine\/([\d\.]{1,4})/, :search=>"headers[server]" },
]
end
