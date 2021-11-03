Plugin.define do
name "Microsoft-WinCE"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

  "Andrew Horton", 

]
version "0.3"
description "Microsoft Windows CE HTTP Server"
website "http://msdn.microsoft.com/en-us/library/ms834461.aspx"
matches [
	{ :regexp=>/^Microsoft-WinCE/, :search=>"headers[server]" },
	{ :version=>/^Microsoft-WinCE\/([\S]+)/, :search=>"headers[server]" },
]
end
