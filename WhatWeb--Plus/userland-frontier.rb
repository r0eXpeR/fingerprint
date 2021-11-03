Plugin.define do
name "UserLand-Frontier"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "The UserLand Frontier Kernel is a powerful development platform including an integrated object database, scripting language, a script editor and debugger, outliner, a multi-threaded runtime and an integrated HTTP server. In addition to being a powerful content management system, thru the Website Framework, Frontier is also a standard HTTP 1.1 server, allowing for a smooth and high-level connection between web browsers and content that's rendered thru templates and with macros."
website "http://frontier.userland.com/"
matches [
	{ :regexp=>/^UserLand Frontier/, :name=>"HTTP Server Header", :search=>"headers[server]" },
	{ :version=>/^UserLand Frontier\/([^-]+)-(.+)$/, :offset=>0, :search=>"headers[server]" },
	{ :os=>/^UserLand Frontier\/([^-]+)-(.+)$/, :offset=>1, :search=>"headers[server]" },
]
end
