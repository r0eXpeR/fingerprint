Plugin.define do
name "JEUS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "JEUS (Java Enterprise User Solution) is TmaxSoft's Java EE 5 certified e-Business Strategic Platform. It enables the efficient creation and implementation of a wide variety of rich user-oriented web applications, facilitates SOA concepts (Service Oriented Architecture), and provides a variety of enterprise system functions such as transaction control, session management, and distributed session clustering."
website "http://us.tmaxsoft.com/jsp/product/detailcontents.jsp?psCd=00PD04&menuCd=00PDMSJE"
matches [
    {:regexp=>/^Jeus WebContainer/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'Jeus WebContainer'},
    {:version=>/^Jeus WebContainer\/([\d\.]+)$/, :search=>"headers[server]"},
    {:version=>/^Jeus WebContainer\/JEUS (.+)$/, :search=>"headers[server]"}
]
end
