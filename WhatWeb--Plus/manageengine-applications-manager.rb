Plugin.define do
name "ManageEngine-Applications-Manager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ManageEngine Applications Manager - monitoring software - includes server monitoring, application server monitoring, database monitoring, web services monitoring, virtualization monitoring, cloud monitoring"
website "http://www.manageengine.com/products/applications_manager/"
dorks [
'intitle:"Applications Manager Login Screen" "Applications Manager" "Number of Monitor"'
]
matches [
{ :text=>'<!-- This comment is for Instant Gratification to work applications.do -->' },
{ :text=>'<SCRIPT LANGUAGE="JavaScript1.2" SRC="/template/appmanager.js"></SCRIPT>' },
{ :text=>'<title>Applications Manager Login Screen</title>' },
{ :version=>/<td>Applications Manager \((Build No:[\d]+)\) &nbsp;&nbsp;&nbsp;&nbsp;Number of Monitor\(s\) : / },
{ :url=>"images/am_logo.gif", :md5=>"4454cf4db9355b0e26b98cc354213c56" },
]
end
