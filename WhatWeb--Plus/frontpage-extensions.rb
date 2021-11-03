Plugin.define do
name "FrontPage-Extensions"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Microsoft FrontPage (full name Microsoft Office FrontPage) is a WYSIWYG HTML editor and web site administration tool from Microsoft for the Microsoft Windows line of operating systems. This plugin identifies the FrontPage HTTP server header which is indicates the presence of FrontPage extensions."
website "http://office.microsoft.com/en-au/frontpage-help/"
matches [
    {:regexp=>/^FrontPage/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'FrontPage'},
    {:version=>/FrontPage\/([^\s]+)/, :search=>"headers[server]"}
]
end
