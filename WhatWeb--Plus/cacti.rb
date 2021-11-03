Plugin.define do
name "Cacti"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Cacti is a complete network graphing solution designed to harness the power of RRDTool's data storage and graphing functionality."
website "http://www.cacti.net/"
dorks [
'inurl:"cacti/graph_view.php?action="'
]
matches [
    {:search=>"headers", :text=>'Set-Cookie: Cacti='},
    {:text=>'/plugins/jqueryskin/include/login.css'},
    {:text=>'<body bgcolor="#FFFFFF" onload="document.login.login_username.focus()">'},
    {:text=>'<title>Login to Cacti</title>'},
    {:text=>'Login to Cacti'}
]
end
