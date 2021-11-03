Plugin.define do
name "Intrasrv"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "IntraSrv - Simple Web Server"
website "http://www.leighb.com/intrasrv.htm"
matches [
    {:search=>"headers", :text=>'intrasrv'},
    {:search=>"headers[server]", :version=>/^intrasrv ([\d\.]+)$/}
]
end
