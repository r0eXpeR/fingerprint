Plugin.define do
name "IBM-CICS-Transaction-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "IBM Customer Information Control System is the new face of CICS Integration point for CICS tooling with rich CICS views, data, and methods. CICS Transaction Server for z/OS is a modern, dependable, and cost effective application platform. z/OS is a 64-bit operating system for mainframe computers, produced by IBM."
website " http://www-01.ibm.com/software/htp/cics/tserver/v41/"
matches [
    {:os=>"z/OS", :regexp=>/^IBM_CICS_Transaction_Server/, :search=>"headers[server]"},
    {:os=>"z/OS", :version=>/^IBM_CICS_Transaction_Server\/([^\(]+)\(zOS\)$/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'IBM_CICS_Transaction_Server'}
]
end
