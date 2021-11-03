Plugin.define do
name "Purveyor-Encrypt-WebServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Purveyor Encrypt WebServer for OpenVMS combines the reliability, security and scalability of the OpenVMS platform with the graphical ease-of-use and functionality of World Wide Web technologies. OpenVMS (Open Virtual Memory System), previously known as VAX-11/VMS, VAX/VMS or (informally) VMS, is a high-end computer server operating system that runs on VAX, Alpha and Itanium-based families of computers. - More info: http://www.sss.co.nz/software/purveyor/purvpage.htm"
matches [
	{  :os=>"OpenVMS", :regexp=>/^Purveyor Encrypt/, :search=>"headers[server]" },
	{  :os=>"OpenVMS", :version=>/^Purveyor Encrypt (Export|Domestic)\/v([^\s]+) OpenVMS$/, :offset=>1, :search=>"headers[server]" },
]
end
