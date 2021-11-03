Plugin.define do
name "Sun-GlassFish"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "GlassFish is an open source application server project led by Sun Microsystems for the Java EE platform. The proprietary version is called Sun GlassFish Enterprise Server. GlassFish supports All Java EE API specifications, such as JDBC, RMI, e-mail, JMS, web services, XML, etc., and defines how to coordinate them."
website "http://glassfish.java.net/"
matches [
	{ :regexp=>/^GlassFish/, :search=>"headers[server]" },
	{ :version=>/^GlassFish v(.+)$/, :search=>"headers[server]" },
	{ :string=>"Open Source Edition", :version=>/^GlassFish Server Open Source Edition (.+)$/, :search=>"headers[server]" },
	{ :string=>"Enterprise Server", :version=>/Sun GlassFish Enterprise Server v(.+)$/, :search=>"headers[server]" },
]
end
