Plugin.define do
name "FrontPage-Personal-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Microsoft Personal Web Server (PWS) is a scaled-down web server software for Windows operating systems. It has fewer features than Microsoft's Internet Information Services (IIS) and its functions have been superseded by IIS and Visual Studio. Since Windows 2000 and FrontPage 2000, PWS was replaced by IIS as a standard Windows component. Personal Web Server was originally created by Vermeer Technologies, the same company which created Microsoft FrontPage, before they were acquired by Microsoft."
website "http://www.microsoft.com/"
matches [
    {:regexp=>/^FPWS/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'FPWS'},
    {:version=>/^FPWS\/([^\s]+)/, :search=>"headers[server]"}
]
end
