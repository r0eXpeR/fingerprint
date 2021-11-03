Plugin.define do
name "Telligent-Community-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Telligent Community (previously known as Community Server) is a community and collaboration software platform developed by Telligent Systems and was first released in 2004. Telligent Community is built on the Telligent Evolution platform, with a variety of core applications running on top of it such as blogs, forums, media galleries, and wikis. Telligent Community is built with ASP.NET, C#, and Microsoft SQL Server. The product used to be named Community Server before being rebranded as part of the 5.0 release."
website "http://telligent.com/products/telligent_community/"
matches [
	{ :version=>/^([\d\.]+)$/, :search=>"headers[communityserver]" },
	{ :regexp=>/^CommunityServer-UserCookie[\d\.]+/, :search=>"headers[set-cookie]", :name=>"Cookies" },
	{ :regexp=>/^CommunityServer-LastVisitUpdated-[\d\.]+/, :search=>"headers[set-cookie]", :name=>"Cookies" },
]
end
